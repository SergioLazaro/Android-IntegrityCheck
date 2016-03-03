.class  Landroid/support/v7/widget/TintContextWrapper$TintResources;
.super Landroid/support/v7/widget/ResourcesWrapper;
.source "TintContextWrapper.java"
.field private final mTintManager:Landroid/support/v7/widget/TintManager;
.method public constructor <init>(Landroid/content/res/Resources;Landroid/support/v7/widget/TintManager;)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v7/widget/ResourcesWrapper;-><init>(Landroid/content/res/Resources;)V
iput-object p2, p0, Landroid/support/v7/widget/TintContextWrapper$TintResources;->mTintManager:Landroid/support/v7/widget/TintManager;
return-void
.end method
.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
.registers 4
invoke-super {p0, p1}, Landroid/support/v7/widget/ResourcesWrapper;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
if-eqz v0, :cond_b
iget-object v1, p0, Landroid/support/v7/widget/TintContextWrapper$TintResources;->mTintManager:Landroid/support/v7/widget/TintManager;
invoke-virtual {v1, p1, v0}, Landroid/support/v7/widget/TintManager;->tintDrawableUsingColorFilter(ILandroid/graphics/drawable/Drawable;)Z
:cond_b
return-object v0
.end method