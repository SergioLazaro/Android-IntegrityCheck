.class  Landroid/support/v4/print/PrintHelperKitkat$1;
.super Landroid/print/PrintDocumentAdapter;
.source "PrintHelperKitkat.java"
.field private mAttributes:Landroid/print/PrintAttributes;
.field final synthetic this$0:Landroid/support/v4/print/PrintHelperKitkat;
.field final synthetic val$bitmap:Landroid/graphics/Bitmap;
.field final synthetic val$callback:Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;
.field final synthetic val$fittingMode:I
.field final synthetic val$jobName:Ljava/lang/String;
.method constructor <init>(Landroid/support/v4/print/PrintHelperKitkat;Ljava/lang/String;Landroid/graphics/Bitmap;ILandroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V
.registers 6
iput-object p1, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->this$0:Landroid/support/v4/print/PrintHelperKitkat;
iput-object p2, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$jobName:Ljava/lang/String;
iput-object p3, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$bitmap:Landroid/graphics/Bitmap;
iput p4, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$fittingMode:I
iput-object p5, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$callback:Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;
invoke-direct {p0}, Landroid/print/PrintDocumentAdapter;-><init>()V
return-void
.end method
.method public onFinish()V
.registers 2
iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$callback:Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;
if-eqz v0, :cond_9
iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$callback:Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;
invoke-interface {v0}, Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;->onFinish()V
:cond_9
return-void
.end method
.method public onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
.registers 10
const/4 v0, 0x1
iput-object p2, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->mAttributes:Landroid/print/PrintAttributes;
new-instance v2, Landroid/print/PrintDocumentInfo$Builder;
iget-object v3, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$jobName:Ljava/lang/String;
invoke-direct {v2, v3}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;
move-result-object v2
invoke-virtual {v2, v0}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;
move-result-object v2
invoke-virtual {v2}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;
move-result-object v1
invoke-virtual {p2, p1}, Landroid/print/PrintAttributes;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_20
:goto_1c
invoke-virtual {p4, v1, v0}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V
return-void
:cond_20
const/4 v0, 0x0
goto :goto_1c
.end method
.method public onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
.registers 15
new-instance v5, Landroid/print/pdf/PrintedPdfDocument;
iget-object v6, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->this$0:Landroid/support/v4/print/PrintHelperKitkat;
iget-object v6, v6, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;
iget-object v7, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->mAttributes:Landroid/print/PrintAttributes;
invoke-direct {v5, v6, v7}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V
iget-object v6, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->this$0:Landroid/support/v4/print/PrintHelperKitkat;
iget-object v7, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$bitmap:Landroid/graphics/Bitmap;
iget-object v8, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->mAttributes:Landroid/print/PrintAttributes;
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
iget-object v6, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->this$0:Landroid/support/v4/print/PrintHelperKitkat;
invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I
move-result v7
invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I
move-result v8
iget v9, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$fittingMode:I
#calls: Landroid/support/v4/print/PrintHelperKitkat;->getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
invoke-static {v6, v7, v8, v0, v9}, Landroid/support/v4/print/PrintHelperKitkat;->access$100(Landroid/support/v4/print/PrintHelperKitkat;IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
move-result-object v2
invoke-virtual {v4}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;
move-result-object v6
const/4 v7, 0x0
invoke-virtual {v6, v3, v2, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
invoke-virtual {v5, v4}, Landroid/print/pdf/PrintedPdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V
:try_end_46
.catchall {:try_start_1a .. :try_end_46} :catchall_7c
:try_start_46
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
:try_end_5d
.catchall {:try_start_46 .. :try_end_5d} :catchall_7c
.catch Ljava/io/IOException; {:try_start_46 .. :try_end_5d} :catch_6f
:goto_5d
if-eqz v5, :cond_62
invoke-virtual {v5}, Landroid/print/pdf/PrintedPdfDocument;->close()V
:cond_62
if-eqz p2, :cond_67
:try_start_64
invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
:try_end_67
.catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_8f
:cond_67
:goto_67
iget-object v6, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$bitmap:Landroid/graphics/Bitmap;
if-eq v3, v6, :cond_6e
invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
:cond_6e
return-void
:catch_6f
move-exception v1
:try_start_70
const-string v6, "PrintHelperKitkat"
const-string v7, "Error writing printed content"
invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
const/4 v6, 0x0
invoke-virtual {p4, v6}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V
:try_end_7b
.catchall {:try_start_70 .. :try_end_7b} :catchall_7c
goto :goto_5d
:catchall_7c
move-exception v6
if-eqz v5, :cond_82
invoke-virtual {v5}, Landroid/print/pdf/PrintedPdfDocument;->close()V
:cond_82
if-eqz p2, :cond_87
:try_start_84
invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
:try_end_87
.catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_91
:goto_87
:cond_87
iget-object v7, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$bitmap:Landroid/graphics/Bitmap;
if-eq v3, v7, :cond_8e
invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
:cond_8e
throw v6
:catch_8f
move-exception v6
goto :goto_67
:catch_91
move-exception v7
goto :goto_87
.end method