.class final Landroid/support/v4/media/RatingCompat$1;
.super Ljava/lang/Object;
.source "RatingCompat.java"
.implements Landroid/os/Parcelable$Creator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/media/RatingCompat;
.registers 6
new-instance v0, Landroid/support/v4/media/RatingCompat;
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v1
invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F
move-result v2
const/4 v3, 0x0
invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/media/RatingCompat;-><init>(IFLandroid/support/v4/media/RatingCompat$1;)V
return-object v0
.end method
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Landroid/support/v4/media/RatingCompat$1;->createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/media/RatingCompat;
move-result-object v0
return-object v0
.end method
.method public newArray(I)[Landroid/support/v4/media/RatingCompat;
.registers 3
new-array v0, p1, [Landroid/support/v4/media/RatingCompat;
return-object v0
.end method
.method public bridge synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Landroid/support/v4/media/RatingCompat$1;->newArray(I)[Landroid/support/v4/media/RatingCompat;
move-result-object v0
return-object v0
.end method