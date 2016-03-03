.class  Landroid/support/v4/animation/DonutAnimatorCompatProvider;
.super Ljava/lang/Object;
.source "DonutAnimatorCompatProvider.java"
.implements Landroid/support/v4/animation/AnimatorProvider;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public clearInterpolator(Landroid/view/View;)V
.registers 2
return-void
.end method
.method public emptyValueAnimator()Landroid/support/v4/animation/ValueAnimatorCompat;
.registers 2
new-instance v0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;
invoke-direct {v0}, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;-><init>()V
return-object v0
.end method