.class  Landroid/support/v7/app/AppCompatDelegateImplV7$ListMenuDecorView;
.super Landroid/support/v7/widget/ContentFrameLayout;
.source "AppCompatDelegateImplV7.java"
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;
.method public constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/content/Context;)V
.registers 3
iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$ListMenuDecorView;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;
invoke-direct {p0, p2}, Landroid/support/v7/widget/ContentFrameLayout;-><init>(Landroid/content/Context;)V
return-void
.end method
.method private isOutOfBounds(II)Z
.registers 4
const/4 v0, -0x5
if-lt p1, v0, :cond_15
if-lt p2, v0, :cond_15
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7$ListMenuDecorView;->getWidth()I
move-result v0
add-int/lit8 v0, v0, 0x5
if-gt p1, v0, :cond_15
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7$ListMenuDecorView;->getHeight()I
move-result v0
add-int/lit8 v0, v0, 0x5
if-le p2, v0, :cond_17
:cond_15
const/4 v0, 0x1
:goto_16
return v0
:cond_17
const/4 v0, 0x0
goto :goto_16
.end method
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.registers 3
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$ListMenuDecorView;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;
invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
move-result v0
if-nez v0, :cond_e
invoke-super {p0, p1}, Landroid/support/v7/widget/ContentFrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
move-result v0
if-eqz v0, :cond_10
:cond_e
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.registers 7
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v0
if-nez v0, :cond_1e
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v3
float-to-int v1, v3
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v3
float-to-int v2, v3
invoke-direct {p0, v1, v2}, Landroid/support/v7/app/AppCompatDelegateImplV7$ListMenuDecorView;->isOutOfBounds(II)Z
move-result v3
if-eqz v3, :cond_1e
iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$ListMenuDecorView;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;
const/4 v4, 0x0
#calls: Landroid/support/v7/app/AppCompatDelegateImplV7;->closePanel(I)V
invoke-static {v3, v4}, Landroid/support/v7/app/AppCompatDelegateImplV7;->access$1400(Landroid/support/v7/app/AppCompatDelegateImplV7;I)V
const/4 v3, 0x1
:goto_1d
return v3
:cond_1e
invoke-super {p0, p1}, Landroid/support/v7/widget/ContentFrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
move-result v3
goto :goto_1d
.end method
.method public setBackgroundResource(I)V
.registers 3
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7$ListMenuDecorView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0, p1}, Landroid/support/v7/widget/TintManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7$ListMenuDecorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
return-void
.end method