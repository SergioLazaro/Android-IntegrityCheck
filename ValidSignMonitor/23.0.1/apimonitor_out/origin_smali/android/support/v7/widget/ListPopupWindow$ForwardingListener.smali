.class public abstract Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ForwardingListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ListPopupWindow$ForwardingListener$TriggerLongPress;,
        Landroid/support/v7/widget/ListPopupWindow$ForwardingListener$DisallowIntercept;
    }
.end annotation


# instance fields
.field private mActivePointerId:I

.field private mDisallowIntercept:Ljava/lang/Runnable;

.field private mForwarding:Z

.field private final mLongPressTimeout:I

.field private final mScaledTouchSlop:F

.field private final mSrc:Landroid/view/View;

.field private final mTapTimeout:I

.field private final mTmpLocation:[I

.field private mTriggerLongPress:Ljava/lang/Runnable;

.field private mWasLongPress:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mTmpLocation:[I

    iput-object p1, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mScaledTouchSlop:F

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mTapTimeout:I

    iget v0, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mTapTimeout:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mLongPressTimeout:I

    return-void
.end method

.method static synthetic access$1000(Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;)V
    .registers 1

    invoke-direct {p0}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->onLongPress()V

    return-void
.end method

.method static synthetic access$900(Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    return-object v0
.end method

.method private clearCallbacks()V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_16
    return-void
.end method

.method private onLongPress()V
    .registers 12

    const/4 v5, 0x0

    const/4 v10, 0x1

    invoke-direct {p0}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->clearCallbacks()V

    iget-object v9, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v9}, Landroid/view/View;->isLongClickable()Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_13
    :goto_13
    return-void

    :cond_14
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->onForwardingStarted()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v10}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    iput-boolean v10, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mForwarding:Z

    iput-boolean v10, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mWasLongPress:Z

    goto :goto_13
.end method

.method private onTouchForwarded(Landroid/view/MotionEvent;)Z
    .registers 12

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->getPopup()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v9

    if-nez v9, :cond_11

    :cond_10
    :goto_10
    return v8

    :cond_11
    #getter for: Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/ListPopupWindow$DropDownListView;
    invoke-static {v5}, Landroid/support/v7/widget/ListPopupWindow;->access$600(Landroid/support/v7/widget/ListPopupWindow;)Landroid/support/v7/widget/ListPopupWindow$DropDownListView;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;->isShown()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-direct {p0, v6, v2}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->toGlobalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    invoke-direct {p0, v1, v2}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->toLocalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    iget v9, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mActivePointerId:I

    invoke-virtual {v1, v2, v9}, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;->onForwardedEvent(Landroid/view/MotionEvent;I)Z

    move-result v3

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    if-eq v0, v7, :cond_40

    const/4 v9, 0x3

    if-eq v0, v9, :cond_40

    move v4, v7

    :goto_3a
    if-eqz v3, :cond_42

    if-eqz v4, :cond_42

    :goto_3e
    move v8, v7

    goto :goto_10

    :cond_40
    move v4, v8

    goto :goto_3a

    :cond_42
    move v7, v8

    goto :goto_3e
.end method

.method private onTouchObserved(Landroid/view/MotionEvent;)Z
    .registers 13

    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_c

    :cond_b
    :goto_b
    return v5

    :cond_c
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    packed-switch v0, :pswitch_data_6c

    goto :goto_b

    :pswitch_14
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mActivePointerId:I

    iput-boolean v5, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mWasLongPress:Z

    iget-object v6, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-nez v6, :cond_27

    new-instance v6, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener$DisallowIntercept;

    invoke-direct {v6, p0, v10}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener$DisallowIntercept;-><init>(Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;Landroid/support/v7/widget/ListPopupWindow$1;)V

    iput-object v6, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    :cond_27
    iget-object v6, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    iget v7, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mTapTimeout:I

    int-to-long v8, v7

    invoke-virtual {v2, v6, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v6, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    if-nez v6, :cond_3a

    new-instance v6, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener$TriggerLongPress;

    invoke-direct {v6, p0, v10}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener$TriggerLongPress;-><init>(Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;Landroid/support/v7/widget/ListPopupWindow$1;)V

    iput-object v6, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    :cond_3a
    iget-object v6, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    iget v7, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mLongPressTimeout:I

    int-to-long v8, v7

    invoke-virtual {v2, v6, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b

    :pswitch_43
    iget v7, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mActivePointerId:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ltz v1, :cond_b

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget v7, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mScaledTouchSlop:F

    invoke-static {v2, v3, v4, v7}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->pointInView(Landroid/view/View;FFF)Z

    move-result v7

    if-nez v7, :cond_b

    invoke-direct {p0}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->clearCallbacks()V

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    move v5, v6

    goto :goto_b

    :pswitch_67
    invoke-direct {p0}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->clearCallbacks()V

    goto :goto_b

    nop

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_14
        :pswitch_67
        :pswitch_43
        :pswitch_67
    .end packed-switch
.end method

.method private static pointInView(Landroid/view/View;FFF)Z
    .registers 6

    neg-float v0, p3

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2a

    neg-float v0, p3

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_2a

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2a

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2a

    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method private toGlobalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v3, 0x1

    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mTmpLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    aget v2, v0, v3

    int-to-float v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return v3
.end method

.method private toLocalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v3, 0x1

    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mTmpLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    neg-int v1, v1

    int-to-float v1, v1

    aget v2, v0, v3

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return v3
.end method


# virtual methods
.method public abstract getPopup()Landroid/support/v7/widget/ListPopupWindow;
.end method

.method protected onForwardingStarted()Z
    .registers 3

    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->getPopup()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->show()V

    :cond_f
    const/4 v1, 0x1

    return v1
.end method

.method protected onForwardingStopped()Z
    .registers 3

    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->getPopup()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->dismiss()V

    :cond_f
    const/4 v1, 0x1

    return v1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 15

    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v7, 0x0

    iget-boolean v10, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mForwarding:Z

    if-eqz v10, :cond_27

    iget-boolean v2, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mWasLongPress:Z

    if-eqz v2, :cond_17

    invoke-direct {p0, p2}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->onTouchForwarded(Landroid/view/MotionEvent;)Z

    move-result v9

    :cond_f
    :goto_f
    iput-boolean v9, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mForwarding:Z

    if-nez v9, :cond_15

    if-eqz v10, :cond_16

    :cond_15
    move v7, v11

    :cond_16
    return v7

    :cond_17
    invoke-direct {p0, p2}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->onTouchForwarded(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_23

    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->onForwardingStopped()Z

    move-result v2

    if-nez v2, :cond_25

    :cond_23
    move v9, v11

    :goto_24
    goto :goto_f

    :cond_25
    move v9, v7

    goto :goto_24

    :cond_27
    invoke-direct {p0, p2}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->onTouchObserved(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->onForwardingStarted()Z

    move-result v2

    if-eqz v2, :cond_4a

    move v9, v11

    :goto_34
    if-eqz v9, :cond_f

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    iget-object v2, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_f

    :cond_4a
    move v9, v7

    goto :goto_34
.end method
