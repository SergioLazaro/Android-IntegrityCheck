.class  Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatJellybeanMr1Impl;
.super Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;
.source "TextUtilsCompat.java"
.method private constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;-><init>(Landroid/support/v4/text/TextUtilsCompat$1;)V
return-void
.end method
.method synthetic constructor <init>(Landroid/support/v4/text/TextUtilsCompat$1;)V
.registers 2
invoke-direct {p0}, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatJellybeanMr1Impl;-><init>()V
return-void
.end method
.method public getLayoutDirectionFromLocale(Ljava/util/Locale;)I
.registers 3
.parameter
.end parameter
invoke-static {p1}, Landroid/support/v4/text/TextUtilsCompatJellybeanMr1;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I
move-result v0
return v0
.end method
.method public htmlEncode(Ljava/lang/String;)Ljava/lang/String;
.registers 3
.parameter
.end parameter
invoke-static {p1}, Landroid/support/v4/text/TextUtilsCompatJellybeanMr1;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method