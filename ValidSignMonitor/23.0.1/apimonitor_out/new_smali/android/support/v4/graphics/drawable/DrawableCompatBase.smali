.class  Landroid/support/v4/graphics/drawable/DrawableCompatBase;
.super Ljava/lang/Object;
.source "DrawableCompatBase.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static setTint(Landroid/graphics/drawable/Drawable;I)V
.registers 3
instance-of v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapper;
if-eqz v0, :cond_9
check-cast p0, Landroid/support/v4/graphics/drawable/DrawableWrapper;
invoke-interface {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapper;->setTint(I)V
:cond_9
return-void
.end method
.method public static setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
.registers 3
instance-of v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapper;
if-eqz v0, :cond_9
check-cast p0, Landroid/support/v4/graphics/drawable/DrawableWrapper;
invoke-interface {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapper;->setTintList(Landroid/content/res/ColorStateList;)V
:cond_9
return-void
.end method
.method public static setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
.registers 3
instance-of v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapper;
if-eqz v0, :cond_9
check-cast p0, Landroid/support/v4/graphics/drawable/DrawableWrapper;
invoke-interface {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapper;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V
:cond_9
return-void
.end method
.method public static wrapForTinting(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
.registers 2
instance-of v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;
if-nez v0, :cond_a
new-instance v0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;
invoke-direct {v0, p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;-><init>(Landroid/graphics/drawable/Drawable;)V
move-object p0, v0
:cond_a
return-object p0
.end method