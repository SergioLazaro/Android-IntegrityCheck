.class  Landroid/support/v4/widget/PopupWindowCompatGingerbread;
.super Ljava/lang/Object;
.source "PopupWindowCompatGingerbread.java"
.field private static sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;
.field private static sGetWindowLayoutTypeMethodAttempted:Z
.field private static sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;
.field private static sSetWindowLayoutTypeMethodAttempted:Z
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static getWindowLayoutType(Landroid/widget/PopupWindow;)I
.registers 6
const/4 v4, 0x1
const/4 v1, 0x0
sget-boolean v0, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sGetWindowLayoutTypeMethodAttempted:Z
if-nez v0, :cond_1b
:try_start_6
const-class v0, Landroid/widget/PopupWindow;
const-string v2, "getWindowLayoutType"
const/4 v3, 0x0
new-array v3, v3, [Ljava/lang/Class;
invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
sput-object v0, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;
sget-object v0, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;
const/4 v2, 0x1
invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
:try_end_19
.catch Ljava/lang/Exception; {:try_start_6 .. :try_end_19} :catch_32
:goto_19
sput-boolean v4, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sGetWindowLayoutTypeMethodAttempted:Z
:cond_1b
sget-object v0, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;
if-eqz v0, :cond_30
:try_start_1f
sget-object v0, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
:try_end_2d
.catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2d} :catch_2f
move-result v0
:goto_2e
return v0
:catch_2f
move-exception v0
:cond_30
move v0, v1
goto :goto_2e
:catch_32
move-exception v0
goto :goto_19
.end method
.method static setWindowLayoutType(Landroid/widget/PopupWindow;I)V
.registers 8
const/4 v5, 0x1
sget-boolean v0, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sSetWindowLayoutTypeMethodAttempted:Z
if-nez v0, :cond_1f
:try_start_5
const-class v0, Landroid/widget/PopupWindow;
const-string v1, "setWindowLayoutType"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Class;
const/4 v3, 0x0
sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
sput-object v0, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;
sget-object v0, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
:goto_1d
:try_end_1d
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1d} :catch_35
sput-boolean v5, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sSetWindowLayoutTypeMethodAttempted:Z
:cond_1f
sget-object v0, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;
if-eqz v0, :cond_32
:try_start_23
sget-object v0, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:goto_32
:cond_32
:try_end_32
.catch Ljava/lang/Exception; {:try_start_23 .. :try_end_32} :catch_33
return-void
:catch_33
move-exception v0
goto :goto_32
:catch_35
move-exception v0
goto :goto_1d
.end method