.class  Landroid/support/v4/media/RatingCompatApi21;
.super Ljava/lang/Object;
.source "RatingCompatApi21.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getPercentRating(Ljava/lang/Object;)F
.registers 2
check-cast p0, Landroid/media/Rating;
invoke-virtual {p0}, Landroid/media/Rating;->getPercentRating()F
move-result v0
return v0
.end method
.method public static getRatingStyle(Ljava/lang/Object;)I
.registers 2
check-cast p0, Landroid/media/Rating;
invoke-virtual {p0}, Landroid/media/Rating;->getRatingStyle()I
move-result v0
return v0
.end method
.method public static getStarRating(Ljava/lang/Object;)F
.registers 2
check-cast p0, Landroid/media/Rating;
invoke-virtual {p0}, Landroid/media/Rating;->getStarRating()F
move-result v0
return v0
.end method
.method public static hasHeart(Ljava/lang/Object;)Z
.registers 2
check-cast p0, Landroid/media/Rating;
invoke-virtual {p0}, Landroid/media/Rating;->hasHeart()Z
move-result v0
return v0
.end method
.method public static isRated(Ljava/lang/Object;)Z
.registers 2
check-cast p0, Landroid/media/Rating;
invoke-virtual {p0}, Landroid/media/Rating;->isRated()Z
move-result v0
return v0
.end method
.method public static isThumbUp(Ljava/lang/Object;)Z
.registers 2
check-cast p0, Landroid/media/Rating;
invoke-virtual {p0}, Landroid/media/Rating;->isThumbUp()Z
move-result v0
return v0
.end method
.method public static newHeartRating(Z)Ljava/lang/Object;
.registers 2
invoke-static {p0}, Landroid/media/Rating;->newHeartRating(Z)Landroid/media/Rating;
move-result-object v0
return-object v0
.end method
.method public static newPercentageRating(F)Ljava/lang/Object;
.registers 2
invoke-static {p0}, Landroid/media/Rating;->newPercentageRating(F)Landroid/media/Rating;
move-result-object v0
return-object v0
.end method
.method public static newStarRating(IF)Ljava/lang/Object;
.registers 3
invoke-static {p0, p1}, Landroid/media/Rating;->newStarRating(IF)Landroid/media/Rating;
move-result-object v0
return-object v0
.end method
.method public static newThumbRating(Z)Ljava/lang/Object;
.registers 2
invoke-static {p0}, Landroid/media/Rating;->newThumbRating(Z)Landroid/media/Rating;
move-result-object v0
return-object v0
.end method
.method public static newUnratedRating(I)Ljava/lang/Object;
.registers 2
invoke-static {p0}, Landroid/media/Rating;->newUnratedRating(I)Landroid/media/Rating;
move-result-object v0
return-object v0
.end method