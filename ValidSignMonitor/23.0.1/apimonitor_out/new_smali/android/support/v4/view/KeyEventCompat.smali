.class public Landroid/support/v4/view/KeyEventCompat;
.super Ljava/lang/Object;
.source "KeyEventCompat.java"
.field static final IMPL:Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;
.method static constructor <clinit>()V
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xb
if-lt v0, v1, :cond_e
new-instance v0, Landroid/support/v4/view/KeyEventCompat$HoneycombKeyEventVersionImpl;
invoke-direct {v0}, Landroid/support/v4/view/KeyEventCompat$HoneycombKeyEventVersionImpl;-><init>()V
sput-object v0, Landroid/support/v4/view/KeyEventCompat;->IMPL:Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;
:goto_d
return-void
:cond_e
new-instance v0, Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;
invoke-direct {v0}, Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;-><init>()V
sput-object v0, Landroid/support/v4/view/KeyEventCompat;->IMPL:Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;
goto :goto_d
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static dispatch(Landroid/view/KeyEvent;Landroid/view/KeyEvent$Callback;Ljava/lang/Object;Ljava/lang/Object;)Z
.registers 5
sget-object v0, Landroid/support/v4/view/KeyEventCompat;->IMPL:Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;
invoke-interface {v0, p0, p1, p2, p3}, Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;->dispatch(Landroid/view/KeyEvent;Landroid/view/KeyEvent$Callback;Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public static getKeyDispatcherState(Landroid/view/View;)Ljava/lang/Object;
.registers 2
sget-object v0, Landroid/support/v4/view/KeyEventCompat;->IMPL:Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;
invoke-interface {v0, p0}, Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;->getKeyDispatcherState(Landroid/view/View;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public static hasModifiers(Landroid/view/KeyEvent;I)Z
.registers 4
sget-object v0, Landroid/support/v4/view/KeyEventCompat;->IMPL:Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;
invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I
move-result v1
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;->metaStateHasModifiers(II)Z
move-result v0
return v0
.end method
.method public static hasNoModifiers(Landroid/view/KeyEvent;)Z
.registers 3
sget-object v0, Landroid/support/v4/view/KeyEventCompat;->IMPL:Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;
invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I
move-result v1
invoke-interface {v0, v1}, Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;->metaStateHasNoModifiers(I)Z
move-result v0
return v0
.end method
.method public static isTracking(Landroid/view/KeyEvent;)Z
.registers 2
sget-object v0, Landroid/support/v4/view/KeyEventCompat;->IMPL:Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;
invoke-interface {v0, p0}, Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;->isTracking(Landroid/view/KeyEvent;)Z
move-result v0
return v0
.end method
.method public static metaStateHasModifiers(II)Z
.registers 3
sget-object v0, Landroid/support/v4/view/KeyEventCompat;->IMPL:Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;
invoke-interface {v0, p0, p1}, Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;->metaStateHasModifiers(II)Z
move-result v0
return v0
.end method
.method public static metaStateHasNoModifiers(I)Z
.registers 2
sget-object v0, Landroid/support/v4/view/KeyEventCompat;->IMPL:Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;
invoke-interface {v0, p0}, Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;->metaStateHasNoModifiers(I)Z
move-result v0
return v0
.end method
.method public static normalizeMetaState(I)I
.registers 2
sget-object v0, Landroid/support/v4/view/KeyEventCompat;->IMPL:Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;
invoke-interface {v0, p0}, Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;->normalizeMetaState(I)I
move-result v0
return v0
.end method
.method public static startTracking(Landroid/view/KeyEvent;)V
.registers 2
sget-object v0, Landroid/support/v4/view/KeyEventCompat;->IMPL:Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;
invoke-interface {v0, p0}, Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;->startTracking(Landroid/view/KeyEvent;)V
return-void
.end method