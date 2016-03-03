.class  Landroid/support/v7/widget/AppCompatBackgroundHelper;
.super Ljava/lang/Object;
.source "AppCompatBackgroundHelper.java"
.field private mBackgroundTint:Landroid/support/v7/widget/TintInfo;
.field private mInternalBackgroundTint:Landroid/support/v7/widget/TintInfo;
.field private final mTintManager:Landroid/support/v7/widget/TintManager;
.field private final mView:Landroid/view/View;
.method constructor <init>(Landroid/view/View;Landroid/support/v7/widget/TintManager;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;
iput-object p2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mTintManager:Landroid/support/v7/widget/TintManager;
return-void
.end method
.method  applySupportBackgroundTint()V
.registers 4
iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v0
if-eqz v0, :cond_17
iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;
if-eqz v1, :cond_18
iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;
iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;
invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I
move-result-object v2
invoke-static {v0, v1, v2}, Landroid/support/v7/widget/TintManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V
:cond_17
:goto_17
return-void
:cond_18
iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/TintInfo;
if-eqz v1, :cond_17
iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/TintInfo;
iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;
invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I
move-result-object v2
invoke-static {v0, v1, v2}, Landroid/support/v7/widget/TintManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V
goto :goto_17
.end method
.method  getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;
if-eqz v0, :cond_9
iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;
iget-object v0, v0, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;
:goto_8
return-object v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method  getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;
if-eqz v0, :cond_9
iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;
iget-object v0, v0, Landroid/support/v7/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;
:goto_8
return-object v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method  loadFromAttributes(Landroid/util/AttributeSet;I)V
.registers 8
iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;
invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object v2
sget-object v3, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper:[I
const/4 v4, 0x0
invoke-virtual {v2, p1, v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v0
:try_start_d
sget v2, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_android_background:I
invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v2
if-eqz v2, :cond_27
iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mTintManager:Landroid/support/v7/widget/TintManager;
sget v3, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_android_background:I
const/4 v4, -0x1
invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v3
invoke-virtual {v2, v3}, Landroid/support/v7/widget/TintManager;->getTintList(I)Landroid/content/res/ColorStateList;
move-result-object v1
if-eqz v1, :cond_27
invoke-virtual {p0, v1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V
:cond_27
sget v2, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTint:I
invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v2
if-eqz v2, :cond_3a
iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;
sget v3, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTint:I
invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;
move-result-object v3
invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
:cond_3a
sget v2, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTintMode:I
invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v2
if-eqz v2, :cond_53
iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;
sget v3, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTintMode:I
const/4 v4, -0x1
invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v3
const/4 v4, 0x0
invoke-static {v3, v4}, Landroid/support/v7/graphics/drawable/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
move-result-object v3
invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
:try_end_53
.catchall {:try_start_d .. :try_end_53} :catchall_57
:cond_53
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
return-void
:catchall_57
move-exception v2
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
throw v2
.end method
.method  onSetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V
return-void
.end method
.method  onSetBackgroundResource(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mTintManager:Landroid/support/v7/widget/TintManager;
if-eqz v0, :cond_e
iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mTintManager:Landroid/support/v7/widget/TintManager;
invoke-virtual {v0, p1}, Landroid/support/v7/widget/TintManager;->getTintList(I)Landroid/content/res/ColorStateList;
move-result-object v0
:goto_a
invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V
return-void
:cond_e
const/4 v0, 0x0
goto :goto_a
.end method
.method  setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V
.registers 4
if-eqz p1, :cond_1a
iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/TintInfo;
if-nez v0, :cond_d
new-instance v0, Landroid/support/v7/widget/TintInfo;
invoke-direct {v0}, Landroid/support/v7/widget/TintInfo;-><init>()V
iput-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/TintInfo;
:cond_d
iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/TintInfo;
iput-object p1, v0, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;
iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/TintInfo;
const/4 v1, 0x1
iput-boolean v1, v0, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z
:goto_16
invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V
return-void
:cond_1a
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/TintInfo;
goto :goto_16
.end method
.method  setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
.registers 4
iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;
if-nez v0, :cond_b
new-instance v0, Landroid/support/v7/widget/TintInfo;
invoke-direct {v0}, Landroid/support/v7/widget/TintInfo;-><init>()V
iput-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;
:cond_b
iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;
iput-object p1, v0, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;
iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;
const/4 v1, 0x1
iput-boolean v1, v0, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z
invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V
return-void
.end method
.method  setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
.registers 4
iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;
if-nez v0, :cond_b
new-instance v0, Landroid/support/v7/widget/TintInfo;
invoke-direct {v0}, Landroid/support/v7/widget/TintInfo;-><init>()V
iput-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;
:cond_b
iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;
iput-object p1, v0, Landroid/support/v7/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;
iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;
const/4 v1, 0x1
iput-boolean v1, v0, Landroid/support/v7/widget/TintInfo;->mHasTintMode:Z
invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V
return-void
.end method