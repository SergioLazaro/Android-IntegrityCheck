.class Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyVpaListener"
.end annotation


# instance fields
.field mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .registers 5

    const/high16 v2, 0x7e00

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v0, 0x0

    instance-of v2, v1, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    if-eqz v2, :cond_e

    move-object v0, v1

    check-cast v0, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    :cond_e
    if-eqz v0, :cond_13

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationCancel(Landroid/view/View;)V

    :cond_13
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .registers 6

    iget-object v2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    #getter for: Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I
    invoke-static {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->access$400(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)I

    move-result v2

    if-ltz v2, :cond_18

    iget-object v2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    #getter for: Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I
    invoke-static {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->access$400(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    iget-object v2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v3, -0x1

    #setter for: Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I
    invoke-static {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->access$402(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)I

    :cond_18
    iget-object v2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    #getter for: Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;
    invoke-static {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->access$000(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    #getter for: Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;
    invoke-static {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->access$000(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_29
    const/high16 v2, 0x7e00

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v0, 0x0

    instance-of v2, v1, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    if-eqz v2, :cond_37

    move-object v0, v1

    check-cast v0, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    :cond_37
    if-eqz v0, :cond_3c

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    :cond_3c
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .registers 6

    iget-object v2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    #getter for: Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I
    invoke-static {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->access$400(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)I

    move-result v2

    if-ltz v2, :cond_d

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    :cond_d
    iget-object v2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    #getter for: Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;
    invoke-static {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->access$100(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    #getter for: Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;
    invoke-static {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->access$100(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_1e
    const/high16 v2, 0x7e00

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v0, 0x0

    instance-of v2, v1, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    if-eqz v2, :cond_2c

    move-object v0, v1

    check-cast v0, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    :cond_2c
    if-eqz v0, :cond_31

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V

    :cond_31
    return-void
.end method
