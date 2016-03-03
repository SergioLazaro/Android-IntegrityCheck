.class public Landroid/support/v7/widget/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "ButtonBarLayout.java"
.field private mAllowStacking:Z
.field private mLastWidthSize:I
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 6
invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v1, -0x1
iput v1, p0, Landroid/support/v7/widget/ButtonBarLayout;->mLastWidthSize:I
sget-object v1, Landroid/support/v7/appcompat/R$styleable;->ButtonBarLayout:[I
invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
move-result-object v0
sget v1, Landroid/support/v7/appcompat/R$styleable;->ButtonBarLayout_allowStacking:I
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v1
iput-boolean v1, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
return-void
.end method
.method private isStacked()Z
.registers 3
const/4 v0, 0x1
invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getOrientation()I
move-result v1
if-ne v1, v0, :cond_8
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method private setStacked(Z)V
.registers 6
if-eqz p1, :cond_2d
const/4 v3, 0x1
:goto_3
invoke-virtual {p0, v3}, Landroid/support/v7/widget/ButtonBarLayout;->setOrientation(I)V
if-eqz p1, :cond_2f
const/4 v3, 0x5
:goto_9
invoke-virtual {p0, v3}, Landroid/support/v7/widget/ButtonBarLayout;->setGravity(I)V
sget v3, Landroid/support/v7/appcompat/R$id;->spacer:I
invoke-virtual {p0, v3}, Landroid/support/v7/widget/ButtonBarLayout;->findViewById(I)Landroid/view/View;
move-result-object v2
if-eqz v2, :cond_1b
if-eqz p1, :cond_32
const/16 v3, 0x8
:goto_18
invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
:cond_1b
invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getChildCount()I
move-result v0
add-int/lit8 v1, v0, -0x2
:goto_21
if-ltz v1, :cond_34
invoke-virtual {p0, v1}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;
move-result-object v3
invoke-virtual {p0, v3}, Landroid/support/v7/widget/ButtonBarLayout;->bringChildToFront(Landroid/view/View;)V
add-int/lit8 v1, v1, -0x1
goto :goto_21
:cond_2d
const/4 v3, 0x0
goto :goto_3
:cond_2f
const/16 v3, 0x50
goto :goto_9
:cond_32
const/4 v3, 0x4
goto :goto_18
:cond_34
return-void
.end method
.method protected onMeasure(II)V
.registers 10
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v4
iget-boolean v5, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z
if-eqz v5, :cond_18
iget v5, p0, Landroid/support/v7/widget/ButtonBarLayout;->mLastWidthSize:I
if-le v4, v5, :cond_16
invoke-direct {p0}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z
move-result v5
if-eqz v5, :cond_16
const/4 v5, 0x0
invoke-direct {p0, v5}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V
:cond_16
iput v4, p0, Landroid/support/v7/widget/ButtonBarLayout;->mLastWidthSize:I
:cond_18
const/4 v3, 0x0
invoke-direct {p0}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z
move-result v5
if-nez v5, :cond_52
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v5
const/high16 v6, 0x4000
if-ne v5, v6, :cond_52
const/high16 v5, -0x8000
invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
const/4 v3, 0x1
:goto_2e
invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V
iget-boolean v5, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z
if-eqz v5, :cond_4c
invoke-direct {p0}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z
move-result v5
if-nez v5, :cond_4c
invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getMeasuredWidthAndState()I
move-result v1
const/high16 v5, -0x100
and-int v2, v1, v5
const/high16 v5, 0x100
if-ne v2, v5, :cond_4c
const/4 v5, 0x1
invoke-direct {p0, v5}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V
const/4 v3, 0x1
:cond_4c
if-eqz v3, :cond_51
invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V
:cond_51
return-void
:cond_52
move v0, p1
goto :goto_2e
.end method
.method public setAllowStacking(Z)V
.registers 4
iget-boolean v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z
if-eq v0, p1, :cond_18
iput-boolean p1, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z
iget-boolean v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z
if-nez v0, :cond_15
invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getOrientation()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_15
const/4 v0, 0x0
invoke-direct {p0, v0}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V
:cond_15
invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->requestLayout()V
:cond_18
return-void
.end method