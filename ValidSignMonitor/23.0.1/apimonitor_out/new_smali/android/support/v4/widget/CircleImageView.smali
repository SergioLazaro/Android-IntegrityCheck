.class  Landroid/support/v4/widget/CircleImageView;
.super Landroid/widget/ImageView;
.source "CircleImageView.java"
.field private static final FILL_SHADOW_COLOR:I = 0x3d000000
.field private static final KEY_SHADOW_COLOR:I = 0x1e000000
.field private static final SHADOW_ELEVATION:I = 0x4
.field private static final SHADOW_RADIUS:F = 3.5f
.field private static final X_OFFSET:F = 0.0f
.field private static final Y_OFFSET:F = 1.75f
.field private mListener:Landroid/view/animation/Animation$AnimationListener;
.field private mShadowRadius:I
.method public constructor <init>(Landroid/content/Context;IF)V
.registers 16
invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
invoke-virtual {p0}, Landroid/support/v4/widget/CircleImageView;->getContext()Landroid/content/Context;
move-result-object v7
invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v7
invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v7
iget v1, v7, Landroid/util/DisplayMetrics;->density:F
mul-float v7, p3, v1
const/high16 v8, 0x4000
mul-float/2addr v7, v8
float-to-int v2, v7
const/high16 v7, 0x3fe0
mul-float/2addr v7, v1
float-to-int v6, v7
const/4 v7, 0x0
mul-float/2addr v7, v1
float-to-int v5, v7
const/high16 v7, 0x4060
mul-float/2addr v7, v1
float-to-int v7, v7
iput v7, p0, Landroid/support/v4/widget/CircleImageView;->mShadowRadius:I
invoke-direct {p0}, Landroid/support/v4/widget/CircleImageView;->elevationSupported()Z
move-result v7
if-eqz v7, :cond_45
new-instance v0, Landroid/graphics/drawable/ShapeDrawable;
new-instance v7, Landroid/graphics/drawable/shapes/OvalShape;
invoke-direct {v7}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V
invoke-direct {v0, v7}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V
const/high16 v7, 0x4080
mul-float/2addr v7, v1
invoke-static {p0, v7}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V
:goto_3a
invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;
move-result-object v7
invoke-virtual {v7, p2}, Landroid/graphics/Paint;->setColor(I)V
invoke-virtual {p0, v0}, Landroid/support/v4/widget/CircleImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
return-void
:cond_45
new-instance v3, Landroid/support/v4/widget/CircleImageView$OvalShadow;
iget v7, p0, Landroid/support/v4/widget/CircleImageView;->mShadowRadius:I
invoke-direct {v3, p0, v7, v2}, Landroid/support/v4/widget/CircleImageView$OvalShadow;-><init>(Landroid/support/v4/widget/CircleImageView;II)V
new-instance v0, Landroid/graphics/drawable/ShapeDrawable;
invoke-direct {v0, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V
const/4 v7, 0x1
invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;
move-result-object v8
invoke-static {p0, v7, v8}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;
move-result-object v7
iget v8, p0, Landroid/support/v4/widget/CircleImageView;->mShadowRadius:I
int-to-float v8, v8
int-to-float v9, v5
int-to-float v10, v6
const/high16 v11, 0x1e00
invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V
iget v4, p0, Landroid/support/v4/widget/CircleImageView;->mShadowRadius:I
invoke-virtual {p0, v4, v4, v4, v4}, Landroid/support/v4/widget/CircleImageView;->setPadding(IIII)V
goto :goto_3a
.end method
.method static synthetic access$000(Landroid/support/v4/widget/CircleImageView;)I
.registers 2
iget v0, p0, Landroid/support/v4/widget/CircleImageView;->mShadowRadius:I
return v0
.end method
.method static synthetic access$002(Landroid/support/v4/widget/CircleImageView;I)I
.registers 2
iput p1, p0, Landroid/support/v4/widget/CircleImageView;->mShadowRadius:I
return p1
.end method
.method private elevationSupported()Z
.registers 3
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x15
if-lt v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public onAnimationEnd()V
.registers 3
invoke-super {p0}, Landroid/widget/ImageView;->onAnimationEnd()V
iget-object v0, p0, Landroid/support/v4/widget/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;
if-eqz v0, :cond_10
iget-object v0, p0, Landroid/support/v4/widget/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;
invoke-virtual {p0}, Landroid/support/v4/widget/CircleImageView;->getAnimation()Landroid/view/animation/Animation;
move-result-object v1
invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V
:cond_10
return-void
.end method
.method public onAnimationStart()V
.registers 3
invoke-super {p0}, Landroid/widget/ImageView;->onAnimationStart()V
iget-object v0, p0, Landroid/support/v4/widget/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;
if-eqz v0, :cond_10
iget-object v0, p0, Landroid/support/v4/widget/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;
invoke-virtual {p0}, Landroid/support/v4/widget/CircleImageView;->getAnimation()Landroid/view/animation/Animation;
move-result-object v1
invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V
:cond_10
return-void
.end method
.method protected onMeasure(II)V
.registers 6
invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V
invoke-direct {p0}, Landroid/support/v4/widget/CircleImageView;->elevationSupported()Z
move-result v0
if-nez v0, :cond_1e
invoke-virtual {p0}, Landroid/support/v4/widget/CircleImageView;->getMeasuredWidth()I
move-result v0
iget v1, p0, Landroid/support/v4/widget/CircleImageView;->mShadowRadius:I
mul-int/lit8 v1, v1, 0x2
add-int/2addr v0, v1
invoke-virtual {p0}, Landroid/support/v4/widget/CircleImageView;->getMeasuredHeight()I
move-result v1
iget v2, p0, Landroid/support/v4/widget/CircleImageView;->mShadowRadius:I
mul-int/lit8 v2, v2, 0x2
add-int/2addr v1, v2
invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/CircleImageView;->setMeasuredDimension(II)V
:cond_1e
return-void
.end method
.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/widget/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;
return-void
.end method
.method public setBackgroundColor(I)V
.registers 3
invoke-virtual {p0}, Landroid/support/v4/widget/CircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v0
instance-of v0, v0, Landroid/graphics/drawable/ShapeDrawable;
if-eqz v0, :cond_15
invoke-virtual {p0}, Landroid/support/v4/widget/CircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v0
check-cast v0, Landroid/graphics/drawable/ShapeDrawable;
invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V
:cond_15
return-void
.end method
.method public setBackgroundColorRes(I)V
.registers 3
invoke-virtual {p0}, Landroid/support/v4/widget/CircleImageView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
invoke-virtual {p0, v0}, Landroid/support/v4/widget/CircleImageView;->setBackgroundColor(I)V
return-void
.end method