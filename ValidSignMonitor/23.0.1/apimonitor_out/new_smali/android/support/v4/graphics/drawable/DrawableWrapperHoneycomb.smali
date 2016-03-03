.class  Landroid/support/v4/graphics/drawable/DrawableWrapperHoneycomb;
.super Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;
.source "DrawableWrapperHoneycomb.java"
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
.registers 2
invoke-direct {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;-><init>(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public jumpToCurrentState()V
.registers 2
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperHoneycomb;->mDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V
return-void
.end method