.class  Landroid/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;
.super Ljava/lang/Object;
.source "TextDirectionHeuristicsCompat.java"
.implements Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;
.field public static final INSTANCE:Landroid/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;
invoke-direct {v0}, Landroid/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;-><init>()V
sput-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;->INSTANCE:Landroid/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public checkRtl(Ljava/lang/CharSequence;II)I
.registers 8
const/4 v2, 0x2
move v1, p2
add-int v0, p2, p3
:goto_4
if-ge v1, v0, :cond_18
const/4 v3, 0x2
if-ne v2, v3, :cond_18
invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C
move-result v3
invoke-static {v3}, Ljava/lang/Character;->getDirectionality(C)B
move-result v3
#calls: Landroid/support/v4/text/TextDirectionHeuristicsCompat;->isRtlTextOrFormat(I)I
invoke-static {v3}, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->access$100(I)I
move-result v2
add-int/lit8 v1, v1, 0x1
goto :goto_4
:cond_18
return v2
.end method