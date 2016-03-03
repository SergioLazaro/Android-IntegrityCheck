.class  Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$EditorHelperBaseImpl;
.super Ljava/lang/Object;
.source "SharedPreferencesCompat.java"
.implements Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$Helper;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Landroid/support/v4/content/SharedPreferencesCompat$1;)V
.registers 2
invoke-direct {p0}, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$EditorHelperBaseImpl;-><init>()V
return-void
.end method
.method public apply(Landroid/content/SharedPreferences$Editor;)V
.registers 2
.parameter
.end parameter
invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method