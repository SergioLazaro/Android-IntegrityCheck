.class  Landroid/support/v4/print/PrintHelperKitkat$2;
.super Landroid/print/PrintDocumentAdapter;
.source "PrintHelperKitkat.java"
.field private mAttributes:Landroid/print/PrintAttributes;
.field  mBitmap:Landroid/graphics/Bitmap;
.field  mLoadBitmap:Landroid/os/AsyncTask;
.field final synthetic this$0:Landroid/support/v4/print/PrintHelperKitkat;
.field final synthetic val$callback:Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;
.field final synthetic val$fittingMode:I
.field final synthetic val$imageFile:Landroid/net/Uri;
.field final synthetic val$jobName:Ljava/lang/String;
.method constructor <init>(Landroid/support/v4/print/PrintHelperKitkat;Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;I)V
.registers 7
iput-object p1, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;
iput-object p2, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$jobName:Ljava/lang/String;
iput-object p3, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$imageFile:Landroid/net/Uri;
iput-object p4, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$callback:Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;
iput p5, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$fittingMode:I
invoke-direct {p0}, Landroid/print/PrintDocumentAdapter;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mBitmap:Landroid/graphics/Bitmap;
return-void
.end method
.method static synthetic access$200(Landroid/support/v4/print/PrintHelperKitkat$2;)V
.registers 1
invoke-direct {p0}, Landroid/support/v4/print/PrintHelperKitkat$2;->cancelLoad()V
return-void
.end method
.method private cancelLoad()V
.registers 4
iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;
#getter for: Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;
invoke-static {v0}, Landroid/support/v4/print/PrintHelperKitkat;->access$400(Landroid/support/v4/print/PrintHelperKitkat;)Ljava/lang/Object;
move-result-object v1
monitor-enter v1
:try_start_7
iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;
iget-object v0, v0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;
if-eqz v0, :cond_19
iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;
iget-object v0, v0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;
invoke-virtual {v0}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V
iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;
const/4 v2, 0x0
iput-object v2, v0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;
:cond_19
monitor-exit v1
return-void
:catchall_1b
move-exception v0
monitor-exit v1
:try_end_1d
.catchall {:try_start_7 .. :try_end_1d} :catchall_1b
throw v0
.end method
.method public onFinish()V
.registers 3
invoke-super {p0}, Landroid/print/PrintDocumentAdapter;->onFinish()V
invoke-direct {p0}, Landroid/support/v4/print/PrintHelperKitkat$2;->cancelLoad()V
iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mLoadBitmap:Landroid/os/AsyncTask;
if-eqz v0, :cond_10
iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mLoadBitmap:Landroid/os/AsyncTask;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z
:cond_10
iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$callback:Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;
if-eqz v0, :cond_19
iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$callback:Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;
invoke-interface {v0}, Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;->onFinish()V
:cond_19
iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mBitmap:Landroid/graphics/Bitmap;
if-eqz v0, :cond_25
iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mBitmap:Landroid/graphics/Bitmap;
:cond_25
return-void
.end method
.method public onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
.registers 15
const/4 v8, 0x0
const/4 v6, 0x1
iput-object p2, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mAttributes:Landroid/print/PrintAttributes;
invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z
move-result v0
if-eqz v0, :cond_e
invoke-virtual {p4}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutCancelled()V
:goto_d
return-void
:cond_e
iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mBitmap:Landroid/graphics/Bitmap;
if-eqz v0, :cond_31
new-instance v0, Landroid/print/PrintDocumentInfo$Builder;
iget-object v1, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$jobName:Ljava/lang/String;
invoke-direct {v0, v1}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v6}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;
move-result-object v0
invoke-virtual {v0, v6}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;
move-result-object v7
invoke-virtual {p2, p1}, Landroid/print/PrintAttributes;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_2f
:goto_2b
invoke-virtual {p4, v7, v6}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V
goto :goto_d
:cond_2f
move v6, v8
goto :goto_2b
:cond_31
new-instance v0, Landroid/support/v4/print/PrintHelperKitkat$2$1;
move-object v1, p0
move-object v2, p3
move-object v3, p2
move-object v4, p1
move-object v5, p4
invoke-direct/range {v0 .. v5}, Landroid/support/v4/print/PrintHelperKitkat$2$1;-><init>(Landroid/support/v4/print/PrintHelperKitkat$2;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;)V
new-array v1, v8, [Landroid/net/Uri;
invoke-virtual {v0, v1}, Landroid/support/v4/print/PrintHelperKitkat$2$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mLoadBitmap:Landroid/os/AsyncTask;
goto :goto_d
.end method
.method public onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
.registers 15
new-instance v5, Landroid/print/pdf/PrintedPdfDocument;
iget-object v6, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;
iget-object v6, v6, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;
iget-object v7, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mAttributes:Landroid/print/PrintAttributes;
invoke-direct {v5, v6, v7}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V
iget-object v6, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;
iget-object v7, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mBitmap:Landroid/graphics/Bitmap;
iget-object v8, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mAttributes:Landroid/print/PrintAttributes;
invoke-virtual {v8}, Landroid/print/PrintAttributes;->getColorMode()I
move-result v8
#calls: Landroid/support/v4/print/PrintHelperKitkat;->convertBitmapForColorMode(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
invoke-static {v6, v7, v8}, Landroid/support/v4/print/PrintHelperKitkat;->access$000(Landroid/support/v4/print/PrintHelperKitkat;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
move-result-object v3
const/4 v6, 0x1
:try_start_1a
invoke-virtual {v5, v6}, Landroid/print/pdf/PrintedPdfDocument;->startPage(I)Landroid/graphics/pdf/PdfDocument$Page;
move-result-object v4
new-instance v0, Landroid/graphics/RectF;
invoke-virtual {v4}, Landroid/graphics/pdf/PdfDocument$Page;->getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;
move-result-object v6
invoke-virtual {v6}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getContentRect()Landroid/graphics/Rect;
move-result-object v6
invoke-direct {v0, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V
iget-object v6, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;
iget-object v7, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I
move-result v7
iget-object v8, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I
move-result v8
iget v9, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$fittingMode:I
#calls: Landroid/support/v4/print/PrintHelperKitkat;->getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
invoke-static {v6, v7, v8, v0, v9}, Landroid/support/v4/print/PrintHelperKitkat;->access$100(Landroid/support/v4/print/PrintHelperKitkat;IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
move-result-object v2
invoke-virtual {v4}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;
move-result-object v6
const/4 v7, 0x0
invoke-virtual {v6, v3, v2, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
invoke-virtual {v5, v4}, Landroid/print/pdf/PrintedPdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V
:try_start_4a
:try_end_4a
.catchall {:try_start_1a .. :try_end_4a} :catchall_80
new-instance v6, Ljava/io/FileOutputStream;
invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;
move-result-object v7
invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
invoke-virtual {v5, v6}, Landroid/print/pdf/PrintedPdfDocument;->writeTo(Ljava/io/OutputStream;)V
const/4 v6, 0x1
new-array v6, v6, [Landroid/print/PageRange;
const/4 v7, 0x0
sget-object v8, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;
aput-object v8, v6, v7
invoke-virtual {p4, v6}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Landroid/print/PageRange;)V
:try_end_61
.catchall {:try_start_4a .. :try_end_61} :catchall_80
.catch Ljava/io/IOException; {:try_start_4a .. :try_end_61} :catch_73
:goto_61
if-eqz v5, :cond_66
invoke-virtual {v5}, Landroid/print/pdf/PrintedPdfDocument;->close()V
:cond_66
if-eqz p2, :cond_6b
:try_start_68
invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
:goto_6b
:cond_6b
:try_end_6b
.catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_93
iget-object v6, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mBitmap:Landroid/graphics/Bitmap;
if-eq v3, v6, :cond_72
invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
:cond_72
return-void
:catch_73
move-exception v1
:try_start_74
const-string v6, "PrintHelperKitkat"
const-string v7, "Error writing printed content"
invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
const/4 v6, 0x0
invoke-virtual {p4, v6}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V
:try_end_7f
.catchall {:try_start_74 .. :try_end_7f} :catchall_80
goto :goto_61
:catchall_80
move-exception v6
if-eqz v5, :cond_86
invoke-virtual {v5}, Landroid/print/pdf/PrintedPdfDocument;->close()V
:cond_86
if-eqz p2, :cond_8b
:try_start_88
invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
:cond_8b
:goto_8b
:try_end_8b
.catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_95
iget-object v7, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mBitmap:Landroid/graphics/Bitmap;
if-eq v3, v7, :cond_92
invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
:cond_92
throw v6
:catch_93
move-exception v6
goto :goto_6b
:catch_95
move-exception v7
goto :goto_8b
.end method