.class  Landroid/support/v4/media/MediaMetadataCompatApi21;
.super Ljava/lang/Object;
.source "MediaMetadataCompatApi21.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getBitmap(Ljava/lang/Object;Ljava/lang/String;)Landroid/graphics/Bitmap;
.registers 3
check-cast p0, Landroid/media/MediaMetadata;
invoke-virtual {p0, p1}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method public static getLong(Ljava/lang/Object;Ljava/lang/String;)J
.registers 4
check-cast p0, Landroid/media/MediaMetadata;
invoke-virtual {p0, p1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J
move-result-wide v0
return-wide v0
.end method
.method public static getRating(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
.registers 3
check-cast p0, Landroid/media/MediaMetadata;
invoke-virtual {p0, p1}, Landroid/media/MediaMetadata;->getRating(Ljava/lang/String;)Landroid/media/Rating;
move-result-object v0
return-object v0
.end method
.method public static getText(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/CharSequence;
.registers 3
check-cast p0, Landroid/media/MediaMetadata;
invoke-virtual {p0, p1}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;
move-result-object v0
return-object v0
.end method
.method public static keySet(Ljava/lang/Object;)Ljava/util/Set;
.registers 2
check-cast p0, Landroid/media/MediaMetadata;
invoke-virtual {p0}, Landroid/media/MediaMetadata;->keySet()Ljava/util/Set;
move-result-object v0
return-object v0
.end method