.class Landroid/support/v7/widget/SwitchCompat$1;
.super Ljava/lang/Object;
.source "SwitchCompat.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/SwitchCompat;->animateThumbToCheckedState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/SwitchCompat;

.field final synthetic val$newCheckedState:Z


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SwitchCompat;Z)V
    .registers 3

    iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat$1;->this$0:Landroid/support/v7/widget/SwitchCompat;

    iput-boolean p2, p0, Landroid/support/v7/widget/SwitchCompat$1;->val$newCheckedState:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat$1;->this$0:Landroid/support/v7/widget/SwitchCompat;

    #getter for: Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;
    invoke-static {v0}, Landroid/support/v7/widget/SwitchCompat;->access$100(Landroid/support/v7/widget/SwitchCompat;)Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;

    move-result-object v0

    if-ne v0, p1, :cond_19

    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat$1;->this$0:Landroid/support/v7/widget/SwitchCompat;

    iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat$1;->val$newCheckedState:Z

    if-eqz v0, :cond_1a

    const/high16 v0, 0x3f80

    :goto_10
    #calls: Landroid/support/v7/widget/SwitchCompat;->setThumbPosition(F)V
    invoke-static {v1, v0}, Landroid/support/v7/widget/SwitchCompat;->access$200(Landroid/support/v7/widget/SwitchCompat;F)V

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat$1;->this$0:Landroid/support/v7/widget/SwitchCompat;

    const/4 v1, 0x0

    #setter for: Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;
    invoke-static {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->access$102(Landroid/support/v7/widget/SwitchCompat;Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;)Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;

    :cond_19
    return-void

    :cond_1a
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
