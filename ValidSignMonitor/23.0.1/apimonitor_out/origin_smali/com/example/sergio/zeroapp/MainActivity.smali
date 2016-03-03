.class public Lcom/example/sergio/zeroapp/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"


# static fields
.field private static final signatureHash:I = 0x5a5efa13


# instance fields
.field private editText:Landroid/widget/EditText;

.field private firstMessage:Ljava/lang/String;

.field private imei:Ljava/lang/String;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/example/sergio/zeroapp/MainActivity;->text:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/example/sergio/zeroapp/MainActivity;->imei:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/example/sergio/zeroapp/MainActivity;->firstMessage:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/example/sergio/zeroapp/MainActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/example/sergio/zeroapp/MainActivity;->printIMEI(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/example/sergio/zeroapp/MainActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/example/sergio/zeroapp/MainActivity;->printSignature(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/example/sergio/zeroapp/MainActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/example/sergio/zeroapp/MainActivity;->printFirstMessage(Landroid/view/View;)V

    return-void
.end method

.method private checkSign()Z
    .registers 9

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {p0}, Lcom/example/sergio/zeroapp/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/example/sergio/zeroapp/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x40

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v5}, Landroid/content/pm/Signature;->hashCode()I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_19} :catch_22

    move-result v4

    const v5, 0x5a5efa13

    if-ne v4, v5, :cond_20

    const/4 v1, 0x1

    :cond_20
    move v4, v1

    :goto_21
    return v4

    :catch_22
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21
.end method

.method private printFirstMessage(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/example/sergio/zeroapp/MainActivity;->firstMessage:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private printIMEI(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/example/sergio/zeroapp/MainActivity;->imei:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private printSignature(Landroid/view/View;)V
    .registers 8

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/example/sergio/zeroapp/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v5}, Landroid/content/pm/Signature;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3b} :catch_3c

    :goto_3b
    return-void

    :catch_3c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3b
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v5, 0x7f040019

    invoke-virtual {p0, v5}, Lcom/example/sergio/zeroapp/MainActivity;->setContentView(I)V

    sget-boolean v3, Lcom/example/sergio/zeroapp/BuildConfig;->DEBUG:Z

    invoke-direct {p0}, Lcom/example/sergio/zeroapp/MainActivity;->checkSign()Z

    move-result v5

    if-nez v5, :cond_73

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIGNATURE WRONG - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/example/sergio/zeroapp/MainActivity;->firstMessage:Ljava/lang/String;

    :goto_26
    const v5, 0x7f0c0050

    invoke-virtual {p0, v5}, Lcom/example/sergio/zeroapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/example/sergio/zeroapp/MainActivity;->editText:Landroid/widget/EditText;

    const v5, 0x7f0c0052

    invoke-virtual {p0, v5}, Lcom/example/sergio/zeroapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v5, 0x7f0c0051

    invoke-virtual {p0, v5}, Lcom/example/sergio/zeroapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v5, 0x7f0c0054

    invoke-virtual {p0, v5}, Lcom/example/sergio/zeroapp/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v5, Lcom/example/sergio/zeroapp/MainActivity$1;

    invoke-direct {v5, p0}, Lcom/example/sergio/zeroapp/MainActivity$1;-><init>(Lcom/example/sergio/zeroapp/MainActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Lcom/example/sergio/zeroapp/MainActivity$2;

    invoke-direct {v5, p0}, Lcom/example/sergio/zeroapp/MainActivity$2;-><init>(Lcom/example/sergio/zeroapp/MainActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Lcom/example/sergio/zeroapp/MainActivity$3;

    invoke-direct {v5, p0}, Lcom/example/sergio/zeroapp/MainActivity$3;-><init>(Lcom/example/sergio/zeroapp/MainActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lcom/example/sergio/zeroapp/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/example/sergio/zeroapp/MainActivity;->imei:Ljava/lang/String;

    return-void

    :cond_73
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIGNATURE OK - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/example/sergio/zeroapp/MainActivity;->firstMessage:Ljava/lang/String;

    goto :goto_26
.end method
