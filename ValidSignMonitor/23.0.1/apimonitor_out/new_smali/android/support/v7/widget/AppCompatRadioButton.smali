.class public Landroid/support/v7/widget/AppCompatRadioButton;
.super Landroid/widget/RadioButton;
.source "AppCompatRadioButton.java"
.implements Landroid/support/v4/widget/TintableCompoundButton;
.field private mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;
.field private mTintManager:Landroid/support/v7/widget/TintManager;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
sget v0, Landroid/support/v7/appcompat/R$attr;->radioButtonStyle:I
invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 6
invoke-direct {p0, p1, p2, p3}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
invoke-static {p1}, Landroid/support/v7/widget/TintManager;->get(Landroid/content/Context;)Landroid/support/v7/widget/TintManager;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mTintManager:Landroid/support/v7/widget/TintManager;
new-instance v0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;
iget-object v1, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mTintManager:Landroid/support/v7/widget/TintManager;
invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;-><init>(Landroid/widget/CompoundButton;Landroid/support/v7/widget/TintManager;)V
iput-object v0, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;
iget-object v0, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;
invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V
return-void
.end method
.method public getCompoundPaddingLeft()I
.registers 3
invoke-super {p0}, Landroid/widget/RadioButton;->getCompoundPaddingLeft()I
move-result v0
iget-object v1, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;
if-eqz v1, :cond_e
iget-object v1, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;
invoke-virtual {v1, v0}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->getCompoundPaddingLeft(I)I
move-result v0
:cond_e
return v0
.end method
.method public getSupportButtonTintList()Landroid/content/res/ColorStateList;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;
invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->getSupportButtonTintList()Landroid/content/res/ColorStateList;
move-result-object v0
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;
invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;
move-result-object v0
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public setButtonDrawable(I)V
.registers 3
.parameter
.end parameter
iget-object v0, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mTintManager:Landroid/support/v7/widget/TintManager;
if-eqz v0, :cond_e
iget-object v0, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mTintManager:Landroid/support/v7/widget/TintManager;
invoke-virtual {v0, p1}, Landroid/support/v7/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
:goto_a
invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatRadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
return-void
:cond_e
invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatRadioButton;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
move-result-object v0
goto :goto_a
.end method
.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 3
invoke-super {p0, p1}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;
if-eqz v0, :cond_c
iget-object v0, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;
invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->onSetButtonDrawable()V
:cond_c
return-void
.end method
.method public setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
.registers 3
.parameter
.end parameter
iget-object v0, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;
if-eqz v0, :cond_9
iget-object v0, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;
invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
:cond_9
return-void
.end method
.method public setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
.registers 3
.parameter
.end parameter
iget-object v0, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;
if-eqz v0, :cond_9
iget-object v0, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;
invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
:cond_9
return-void
.end method