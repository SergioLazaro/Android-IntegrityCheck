.class  Landroid/support/v4/widget/EdgeEffectCompatLollipop;
.super Ljava/lang/Object;
.source "EdgeEffectCompatLollipop.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static onPull(Ljava/lang/Object;FF)Z
.registers 4
check-cast p0, Landroid/widget/EdgeEffect;
invoke-virtual {p0, p1, p2}, Landroid/widget/EdgeEffect;->onPull(FF)V
const/4 v0, 0x1
return v0
.end method