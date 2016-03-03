.class  Landroid/support/v4/view/ViewCompatBase;
.super Ljava/lang/Object;
.source "ViewCompatBase.java"
.field private static final TAG:Ljava/lang/String; = "ViewCompatBase"
.field private static sMinHeightField:Ljava/lang/reflect/Field;
.field private static sMinHeightFieldFetched:Z
.field private static sMinWidthField:Ljava/lang/reflect/Field;
.field private static sMinWidthFieldFetched:Z
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
.registers 2
instance-of v0, p0, Landroid/support/v4/view/TintableBackgroundView;
if-eqz v0, :cond_b
check-cast p0, Landroid/support/v4/view/TintableBackgroundView;
invoke-interface {p0}, Landroid/support/v4/view/TintableBackgroundView;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
move-result-object v0
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method static getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
.registers 2
instance-of v0, p0, Landroid/support/v4/view/TintableBackgroundView;
if-eqz v0, :cond_b
check-cast p0, Landroid/support/v4/view/TintableBackgroundView;
invoke-interface {p0}, Landroid/support/v4/view/TintableBackgroundView;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
move-result-object v0
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method static getMinimumHeight(Landroid/view/View;)I
.registers 4
const/4 v2, 0x1
sget-boolean v0, Landroid/support/v4/view/ViewCompatBase;->sMinHeightFieldFetched:Z
if-nez v0, :cond_17
:try_start_5
const-class v0, Landroid/view/View;
const-string v1, "mMinHeight"
invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v0
sput-object v0, Landroid/support/v4/view/ViewCompatBase;->sMinHeightField:Ljava/lang/reflect/Field;
sget-object v0, Landroid/support/v4/view/ViewCompatBase;->sMinHeightField:Ljava/lang/reflect/Field;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
:try_end_15
.catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_15} :catch_2b
:goto_15
sput-boolean v2, Landroid/support/v4/view/ViewCompatBase;->sMinHeightFieldFetched:Z
:cond_17
sget-object v0, Landroid/support/v4/view/ViewCompatBase;->sMinHeightField:Ljava/lang/reflect/Field;
if-eqz v0, :cond_29
:try_start_1b
sget-object v0, Landroid/support/v4/view/ViewCompatBase;->sMinHeightField:Ljava/lang/reflect/Field;
invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
:try_end_26
.catch Ljava/lang/Exception; {:try_start_1b .. :try_end_26} :catch_28
move-result v0
:goto_27
return v0
:catch_28
move-exception v0
:cond_29
const/4 v0, 0x0
goto :goto_27
:catch_2b
move-exception v0
goto :goto_15
.end method
.method static getMinimumWidth(Landroid/view/View;)I
.registers 4
const/4 v2, 0x1
sget-boolean v0, Landroid/support/v4/view/ViewCompatBase;->sMinWidthFieldFetched:Z
if-nez v0, :cond_17
:try_start_5
const-class v0, Landroid/view/View;
const-string v1, "mMinWidth"
invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v0
sput-object v0, Landroid/support/v4/view/ViewCompatBase;->sMinWidthField:Ljava/lang/reflect/Field;
sget-object v0, Landroid/support/v4/view/ViewCompatBase;->sMinWidthField:Ljava/lang/reflect/Field;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
:try_end_15
.catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_15} :catch_2b
:goto_15
sput-boolean v2, Landroid/support/v4/view/ViewCompatBase;->sMinWidthFieldFetched:Z
:cond_17
sget-object v0, Landroid/support/v4/view/ViewCompatBase;->sMinWidthField:Ljava/lang/reflect/Field;
if-eqz v0, :cond_29
:try_start_1b
sget-object v0, Landroid/support/v4/view/ViewCompatBase;->sMinWidthField:Ljava/lang/reflect/Field;
invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
:try_end_26
.catch Ljava/lang/Exception; {:try_start_1b .. :try_end_26} :catch_28
move-result v0
:goto_27
return v0
:catch_28
move-exception v0
:cond_29
const/4 v0, 0x0
goto :goto_27
:catch_2b
move-exception v0
goto :goto_15
.end method
.method static isAttachedToWindow(Landroid/view/View;)Z
.registers 2
invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;
move-result-object v0
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method static isLaidOut(Landroid/view/View;)Z
.registers 2
invoke-virtual {p0}, Landroid/view/View;->getWidth()I
move-result v0
if-lez v0, :cond_e
invoke-virtual {p0}, Landroid/view/View;->getHeight()I
move-result v0
if-lez v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method static setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
.registers 3
instance-of v0, p0, Landroid/support/v4/view/TintableBackgroundView;
if-eqz v0, :cond_9
check-cast p0, Landroid/support/v4/view/TintableBackgroundView;
invoke-interface {p0, p1}, Landroid/support/v4/view/TintableBackgroundView;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
:cond_9
return-void
.end method
.method static setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
.registers 3
instance-of v0, p0, Landroid/support/v4/view/TintableBackgroundView;
if-eqz v0, :cond_9
check-cast p0, Landroid/support/v4/view/TintableBackgroundView;
invoke-interface {p0, p1}, Landroid/support/v4/view/TintableBackgroundView;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
:cond_9
return-void
.end method