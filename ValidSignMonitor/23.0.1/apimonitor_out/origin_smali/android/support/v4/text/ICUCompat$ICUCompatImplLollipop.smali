.class Landroid/support/v4/text/ICUCompat$ICUCompatImplLollipop;
.super Ljava/lang/Object;
.source "ICUCompat.java"

# interfaces
.implements Landroid/support/v4/text/ICUCompat$ICUCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/text/ICUCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICUCompatImplLollipop"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/support/v4/text/ICUCompatApi23;->maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
