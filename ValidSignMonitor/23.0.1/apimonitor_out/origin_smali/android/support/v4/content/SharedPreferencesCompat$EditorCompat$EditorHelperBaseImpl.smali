.class Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$EditorHelperBaseImpl;
.super Ljava/lang/Object;
.source "SharedPreferencesCompat.java"

# interfaces
.implements Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$Helper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EditorHelperBaseImpl"
.end annotation


# direct methods
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


# virtual methods
.method public apply(Landroid/content/SharedPreferences$Editor;)V
    .registers 2
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
