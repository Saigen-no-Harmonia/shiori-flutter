import 'dart:io';
import 'dart:typed_data';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:dio/dio.dart';
import 'package:gal/gal.dart'; // 変更

import '../../../../theme/app_colors.dart';
import '../../../../theme/app_theme.dart';
import '../../../common/ui/widgets/common_loading.dart';
import '../../model/gallery_photo.dart';
import 'photo_viewer.dart';

class PhotoDetailScreen extends ConsumerStatefulWidget {
  const PhotoDetailScreen({
    super.key,
    required this.photo,
  });

  final GalleryPhoto photo;

  @override
  ConsumerState<PhotoDetailScreen> createState() => _PhotoDetailScreenState();
}

class _PhotoDetailScreenState extends ConsumerState<PhotoDetailScreen> {
  bool _isDownloading = false;
  String? _downloadMessage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // 写真表示エリア
          Center(
            child: PhotoViewer(imageUrl: widget.photo.url),
          ),
          
          // 閉じるボタン
          Positioned(
            top: MediaQuery.of(context).padding.top + 16,
            left: 16,
            child: GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.close,
                  color: Colors.white,
                  size: 24,
                ),
              ),
            ),
          ),
          
          // 保存ボタン
          Positioned(
            top: MediaQuery.of(context).padding.top + 16,
            right: 16,
            child: GestureDetector(
              onTap: _isDownloading ? null : _downloadPhoto,
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (_isDownloading) ...[
                      const SizedBox(
                        width: 24,
                        height: 24,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                        ),
                      ),
                    ] else ...[
                      const Icon(
                        Icons.download,
                        color: Colors.white,
                        size: 24,
                      ),
                    ],
                    const SizedBox(height: 4),
                    Text(
                      '保存する',
                      style: AppTheme.caption.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          
          // ダウンロード結果メッセージ
          if (_downloadMessage != null)
            Positioned(
              bottom: MediaQuery.of(context).padding.bottom + 100,
              left: 0,
              right: 0,
              child: Center(
                child: AnimatedOpacity(
                  opacity: _downloadMessage != null ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 300),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          _downloadMessage!.contains('成功') 
                              ? Icons.check_circle 
                              : Icons.error,
                          color: _downloadMessage!.contains('成功') 
                              ? Colors.green 
                              : Colors.red,
                          size: 20,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          _downloadMessage!,
                          style: AppTheme.body.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Future<void> _downloadPhoto() async {
    setState(() {
      _isDownloading = true;
      _downloadMessage = null;
    });

    try {
      // 権限確認（galパッケージは内部で権限を処理）
      if (!await Gal.hasAccess()) {
        await Gal.requestAccess();
      }

      // 画像をダウンロード
      final dio = Dio();
      final response = await dio.get(
        widget.photo.url,
        options: Options(responseType: ResponseType.bytes),
      );

      // Uint8Listに変換
      final Uint8List imageBytes = Uint8List.fromList(response.data);

      // ギャラリーに保存（galパッケージ使用）
      await Gal.putImageBytes(
        imageBytes,
        name: 'shiori_photo_${widget.photo.id}_${DateTime.now().millisecondsSinceEpoch}',
      );

      setState(() {
        _downloadMessage = '保存に成功しました';
        _isDownloading = false;
      });

      // 触覚フィードバック
      HapticFeedback.lightImpact();
      
    } catch (error) {
      debugPrint('Photo download error: $error');
      setState(() {
        _downloadMessage = '保存に失敗しました';
        _isDownloading = false;
      });
    }

    _hideMessageAfterDelay();
  }

  void _hideMessageAfterDelay() {
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        setState(() {
          _downloadMessage = null;
        });
      }
    });
  }
}
