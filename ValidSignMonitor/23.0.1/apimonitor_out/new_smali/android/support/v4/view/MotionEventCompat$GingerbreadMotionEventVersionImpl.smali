.class  Landroid/support/v4/view/MotionEventCompat$GingerbreadMotionEventVersionImpl;
.super Landroid/support/v4/view/MotionEventCompat$EclairMotionEventVersionImpl;
.source "MotionEventCompat.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/view/MotionEventCompat$EclairMotionEventVersionImpl;-><init>()V
return-void
.end method
.method public getSource(Landroid/view/MotionEvent;)I
.registers 3
invoke-static {p1}, Landroid/support/v4/view/MotionEventCompatGingerbread;->getSource(Landroid/view/MotionEvent;)I
move-result v0
return v0
.end method