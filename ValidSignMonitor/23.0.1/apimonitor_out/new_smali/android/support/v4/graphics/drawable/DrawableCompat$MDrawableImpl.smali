.class  Landroid/support/v4/graphics/drawable/DrawableCompat$MDrawableImpl;
.super Landroid/support/v4/graphics/drawable/DrawableCompat$LollipopMr1DrawableImpl;
.source "DrawableCompat.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$LollipopMr1DrawableImpl;-><init>()V
return-void
.end method
.method public getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
.registers 3
invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompatApi23;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
move-result v0
return v0
.end method
.method public setLayoutDirection(Landroid/graphics/drawable/Drawable;I)V
.registers 3
invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompatApi23;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)V
return-void
.end method