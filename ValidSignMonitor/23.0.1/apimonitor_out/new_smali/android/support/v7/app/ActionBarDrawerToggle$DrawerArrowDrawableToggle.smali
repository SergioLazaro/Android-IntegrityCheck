.class  Landroid/support/v7/app/ActionBarDrawerToggle$DrawerArrowDrawableToggle;
.super Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;
.source "ActionBarDrawerToggle.java"
.implements Landroid/support/v7/app/ActionBarDrawerToggle$DrawerToggle;
.field private final mActivity:Landroid/app/Activity;
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p2}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;-><init>(Landroid/content/Context;)V
iput-object p1, p0, Landroid/support/v7/app/ActionBarDrawerToggle$DrawerArrowDrawableToggle;->mActivity:Landroid/app/Activity;
return-void
.end method
.method public getPosition()F
.registers 2
invoke-virtual {p0}, Landroid/support/v7/app/ActionBarDrawerToggle$DrawerArrowDrawableToggle;->getProgress()F
move-result v0
return v0
.end method
.method public setPosition(F)V
.registers 3
const/high16 v0, 0x3f80
cmpl-float v0, p1, v0
if-nez v0, :cond_e
const/4 v0, 0x1
invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarDrawerToggle$DrawerArrowDrawableToggle;->setVerticalMirror(Z)V
:cond_a
:goto_a
invoke-virtual {p0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle$DrawerArrowDrawableToggle;->setProgress(F)V
return-void
:cond_e
const/4 v0, 0x0
cmpl-float v0, p1, v0
if-nez v0, :cond_a
const/4 v0, 0x0
invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarDrawerToggle$DrawerArrowDrawableToggle;->setVerticalMirror(Z)V
goto :goto_a
.end method