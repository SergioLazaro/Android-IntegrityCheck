.class  Landroid/support/v4/view/animation/PathInterpolatorCompatBase;
.super Ljava/lang/Object;
.source "PathInterpolatorCompatBase.java"
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static create(FF)Landroid/view/animation/Interpolator;
.registers 3
new-instance v0, Landroid/support/v4/view/animation/PathInterpolatorDonut;
invoke-direct {v0, p0, p1}, Landroid/support/v4/view/animation/PathInterpolatorDonut;-><init>(FF)V
return-object v0
.end method
.method public static create(FFFF)Landroid/view/animation/Interpolator;
.registers 5
new-instance v0, Landroid/support/v4/view/animation/PathInterpolatorDonut;
invoke-direct {v0, p0, p1, p2, p3}, Landroid/support/v4/view/animation/PathInterpolatorDonut;-><init>(FFFF)V
return-object v0
.end method
.method public static create(Landroid/graphics/Path;)Landroid/view/animation/Interpolator;
.registers 2
new-instance v0, Landroid/support/v4/view/animation/PathInterpolatorDonut;
invoke-direct {v0, p0}, Landroid/support/v4/view/animation/PathInterpolatorDonut;-><init>(Landroid/graphics/Path;)V
return-object v0
.end method