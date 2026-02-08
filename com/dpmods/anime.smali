.class public Lcom/dpmods/anime;
.super Ljava/lang/Object;
.source "anime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dpmods/anime$100000001;,
        Lcom/dpmods/anime$100000002;,
        Lcom/dpmods/anime$TiltManager;,
        Lcom/dpmods/anime$SparkleBorderView;,
        Lcom/dpmods/anime$CinematicParticleView;,
        Lcom/dpmods/anime$100000003;,
        Lcom/dpmods/anime$100000005;,
        Lcom/dpmods/anime$100000006;,
        Lcom/dpmods/anime$GradientRingView;,
        Lcom/dpmods/anime$100000007;,
        Lcom/dpmods/anime$100000008;,
        Lcom/dpmods/anime$100000009;,
        Lcom/dpmods/anime$100000010;,
        Lcom/dpmods/anime$100000011;,
        Lcom/dpmods/anime$100000014;,
        Lcom/dpmods/anime$100000017;,
        Lcom/dpmods/anime$100000018;,
        Lcom/dpmods/anime$100000020;
    }
.end annotation


# static fields
.field private static final GITHUB_JSON_URL:Ljava/lang/String; = "https://raw.githubusercontent.com/instaboosterwesd/keyauth/refs/heads/main/json.txt"

.field private static final MATCH_PARENT:I = -0x1

.field private static final VIDEO_FILE_NAME:Ljava/lang/String; = "dp.mp4"

.field private static final WRAP_CONTENT:I = -0x2


# instance fields
.field private ADMIN_URL:Ljava/lang/String;

.field private COL_ACCENT:I

.field private COL_BG_BOT:I

.field private COL_BG_TOP:I

.field private COL_STROKE:I

.field private COL_TEXT:I

.field private INFO_MSG:Ljava/lang/String;

.field private INFO_URL:Ljava/lang/String;

.field private KEY_PAGE_BASE:Ljava/lang/String;

.field private KEY_VALIDITY_STRING:Ljava/lang/String;

.field private SHORTENER_BASE:Ljava/lang/String;

.field private SHORTENER_KEY_NAME:Ljava/lang/String;

.field private SHORTENER_TOKEN:Ljava/lang/String;

.field private TIME_API_BASE:Ljava/lang/String;

.field private TIME_ZONE:Ljava/lang/String;

.field private TXT_BTN_ADMIN:Ljava/lang/String;

.field private TXT_BTN_GET:Ljava/lang/String;

.field private TXT_BTN_LOGIN:Ljava/lang/String;

.field private TXT_BTN_UPDATE:Ljava/lang/String;

.field private TXT_HINT:Ljava/lang/String;

.field private btnAction:Landroid/widget/Button;

.field private btnAdmin:Landroid/widget/Button;

.field private btnGetKey:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private dialog:Landroid/app/Dialog;

.field private dialogSub:Ljava/lang/String;

.field private dialogTitle:Ljava/lang/String;

.field private isRequestInProgress:Z

.field private isUpdateMode:Z

.field private keyInput:Landroid/widget/EditText;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private tiltManager:Lcom/dpmods/anime$TiltManager;

.field private updateMsg:Ljava/lang/String;

.field private updateTitle:Ljava/lang/String;

.field private updateUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "https://t.me/DPMods"

    iput-object v0, p0, Lcom/dpmods/anime;->ADMIN_URL:Ljava/lang/String;

    const-string v0, "https://youtube.com/dpmods"

    iput-object v0, p0, Lcom/dpmods/anime;->INFO_URL:Ljava/lang/String;

    const-string v0, "How To Get Key"

    iput-object v0, p0, Lcom/dpmods/anime;->INFO_MSG:Ljava/lang/String;

    const-string v0, "https://xtglinks.com/api"

    iput-object v0, p0, Lcom/dpmods/anime;->SHORTENER_BASE:Ljava/lang/String;

    const-string v0, "e866b423bb5ae2597c657c9fd6288e8e5d113a47"

    iput-object v0, p0, Lcom/dpmods/anime;->SHORTENER_TOKEN:Ljava/lang/String;

    const-string v0, "shortenedUrl"

    iput-object v0, p0, Lcom/dpmods/anime;->SHORTENER_KEY_NAME:Ljava/lang/String;

    const-string v0, "https://translate.google.com/?sl=auto&tl=en&op=translate&text="

    iput-object v0, p0, Lcom/dpmods/anime;->KEY_PAGE_BASE:Ljava/lang/String;

    const-string v0, "24h"

    iput-object v0, p0, Lcom/dpmods/anime;->KEY_VALIDITY_STRING:Ljava/lang/String;

    const-string v0, "#FF1A0020"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dpmods/anime;->COL_BG_TOP:I

    const-string v0, "#FF050505"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dpmods/anime;->COL_BG_BOT:I

    const-string v0, "#FF6200EE"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dpmods/anime;->COL_ACCENT:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/dpmods/anime;->COL_TEXT:I

    const-string v0, "#FF9D46FF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dpmods/anime;->COL_STROKE:I

    const-string v0, "http://worldtimeapi.org/api/timezone/"

    iput-object v0, p0, Lcom/dpmods/anime;->TIME_API_BASE:Ljava/lang/String;

    const-string v0, "Asia/Kolkata"

    iput-object v0, p0, Lcom/dpmods/anime;->TIME_ZONE:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dpmods/anime;->isUpdateMode:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/dpmods/anime;->updateUrl:Ljava/lang/String;

    const-string v1, "DPMods"

    iput-object v1, p0, Lcom/dpmods/anime;->dialogTitle:Ljava/lang/String;

    const-string v1, "Device Verification"

    iput-object v1, p0, Lcom/dpmods/anime;->dialogSub:Ljava/lang/String;

    const-string v1, "Update Required"

    iput-object v1, p0, Lcom/dpmods/anime;->updateTitle:Ljava/lang/String;

    const-string v1, "A new version is available. Please update."

    iput-object v1, p0, Lcom/dpmods/anime;->updateMsg:Ljava/lang/String;

    const-string v1, "Get Key"

    iput-object v1, p0, Lcom/dpmods/anime;->TXT_BTN_GET:Ljava/lang/String;

    const-string v1, "Login / Verify"

    iput-object v1, p0, Lcom/dpmods/anime;->TXT_BTN_LOGIN:Ljava/lang/String;

    const-string v1, "Admin"

    iput-object v1, p0, Lcom/dpmods/anime;->TXT_BTN_ADMIN:Ljava/lang/String;

    const-string v1, "Update Now"

    iput-object v1, p0, Lcom/dpmods/anime;->TXT_BTN_UPDATE:Ljava/lang/String;

    const-string v1, "Paste Key Here"

    iput-object v1, p0, Lcom/dpmods/anime;->TXT_HINT:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/dpmods/anime;->isRequestInProgress:Z

    .line 132
    iput-object p1, p0, Lcom/dpmods/anime;->context:Landroid/content/Context;

    return-void
.end method

.method public static DPDialog(Landroid/content/Context;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 136
    new-instance v0, Lcom/dpmods/anime;

    invoke-direct {v0, p0}, Lcom/dpmods/anime;-><init>(Landroid/content/Context;)V

    invoke-direct {v0}, Lcom/dpmods/anime;->init()V

    return-void
.end method

.method static synthetic access$1000042(Lcom/dpmods/anime;)V
    .registers 1

    invoke-direct {p0}, Lcom/dpmods/anime;->fetchConfiguration()V

    return-void
.end method

.method static synthetic access$1000053(Lcom/dpmods/anime;)J
    .registers 3

    invoke-direct {p0}, Lcom/dpmods/anime;->getGlobalTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1000054(Lcom/dpmods/anime;J)J
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/dpmods/anime;->getMidnightTimestamp(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1000058(Lcom/dpmods/anime;)V
    .registers 1

    invoke-direct {p0}, Lcom/dpmods/anime;->handleGetKey()V

    return-void
.end method

.method static synthetic access$1000062(Lcom/dpmods/anime;)V
    .registers 1

    invoke-direct {p0}, Lcom/dpmods/anime;->handleLogin()V

    return-void
.end method

.method static synthetic access$1000065(Lcom/dpmods/anime;)V
    .registers 1

    invoke-direct {p0}, Lcom/dpmods/anime;->lockGetKeyButton()V

    return-void
.end method

.method static synthetic access$1000067(Lcom/dpmods/anime;)V
    .registers 1

    invoke-direct {p0}, Lcom/dpmods/anime;->unlockGetKeyButtonDelayed()V

    return-void
.end method

.method static synthetic access$1000075(Lcom/dpmods/anime;I)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/dpmods/anime;->dp(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1000076(Lcom/dpmods/anime;F)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/dpmods/anime;->dp(F)I

    move-result p0

    return p0
.end method

.method static synthetic access$L1000000(Lcom/dpmods/anime;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$L1000005(Lcom/dpmods/anime;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime;->ADMIN_URL:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$L1000006(Lcom/dpmods/anime;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime;->INFO_URL:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$L1000008(Lcom/dpmods/anime;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime;->SHORTENER_BASE:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$L1000009(Lcom/dpmods/anime;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime;->SHORTENER_TOKEN:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$L1000010(Lcom/dpmods/anime;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime;->SHORTENER_KEY_NAME:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$L1000011(Lcom/dpmods/anime;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime;->KEY_PAGE_BASE:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$L1000015(Lcom/dpmods/anime;)I
    .registers 1

    iget p0, p0, Lcom/dpmods/anime;->COL_ACCENT:I

    return p0
.end method

.method static synthetic access$L1000020(Lcom/dpmods/anime;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/dpmods/anime;->isUpdateMode:Z

    return p0
.end method

.method static synthetic access$L1000021(Lcom/dpmods/anime;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime;->updateUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$L1000026(Lcom/dpmods/anime;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime;->TXT_BTN_GET:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$L1000032(Lcom/dpmods/anime;)Landroid/widget/Button;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime;->btnGetKey:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$L1000035(Lcom/dpmods/anime;)Landroid/app/Dialog;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$L1000036(Lcom/dpmods/anime;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/dpmods/anime;->isRequestInProgress:Z

    return p0
.end method

.method static synthetic access$L1000037(Lcom/dpmods/anime;)Landroid/media/MediaPlayer;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$L1000038(Lcom/dpmods/anime;)Lcom/dpmods/anime$TiltManager;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime;->tiltManager:Lcom/dpmods/anime$TiltManager;

    return-object p0
.end method

.method static synthetic access$S1000000(Lcom/dpmods/anime;Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/dpmods/anime;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$S1000005(Lcom/dpmods/anime;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/dpmods/anime;->ADMIN_URL:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$S1000006(Lcom/dpmods/anime;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/dpmods/anime;->INFO_URL:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$S1000008(Lcom/dpmods/anime;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/dpmods/anime;->SHORTENER_BASE:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$S1000009(Lcom/dpmods/anime;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/dpmods/anime;->SHORTENER_TOKEN:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$S1000010(Lcom/dpmods/anime;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/dpmods/anime;->SHORTENER_KEY_NAME:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$S1000011(Lcom/dpmods/anime;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/dpmods/anime;->KEY_PAGE_BASE:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$S1000015(Lcom/dpmods/anime;I)V
    .registers 2

    iput p1, p0, Lcom/dpmods/anime;->COL_ACCENT:I

    return-void
.end method

.method static synthetic access$S1000020(Lcom/dpmods/anime;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/dpmods/anime;->isUpdateMode:Z

    return-void
.end method

.method static synthetic access$S1000021(Lcom/dpmods/anime;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/dpmods/anime;->updateUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$S1000026(Lcom/dpmods/anime;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/dpmods/anime;->TXT_BTN_GET:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$S1000032(Lcom/dpmods/anime;Landroid/widget/Button;)V
    .registers 2

    iput-object p1, p0, Lcom/dpmods/anime;->btnGetKey:Landroid/widget/Button;

    return-void
.end method

.method static synthetic access$S1000035(Lcom/dpmods/anime;Landroid/app/Dialog;)V
    .registers 2

    iput-object p1, p0, Lcom/dpmods/anime;->dialog:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$S1000036(Lcom/dpmods/anime;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/dpmods/anime;->isRequestInProgress:Z

    return-void
.end method

.method static synthetic access$S1000037(Lcom/dpmods/anime;Landroid/media/MediaPlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/dpmods/anime;->mediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method static synthetic access$S1000038(Lcom/dpmods/anime;Lcom/dpmods/anime$TiltManager;)V
    .registers 2

    iput-object p1, p0, Lcom/dpmods/anime;->tiltManager:Lcom/dpmods/anime$TiltManager;

    return-void
.end method

.method private createSolidButton(Ljava/lang/String;)Landroid/widget/Button;
    .registers 7

    .line 713
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/dpmods/anime;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 714
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 715
    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 716
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 717
    const/4 p1, 0x0

    move-object v1, p1

    check-cast v1, Landroid/graphics/Typeface;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 718
    const/16 p1, 0x10

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    .line 719
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget v3, p0, Lcom/dpmods/anime;->COL_ACCENT:I

    const-string v4, "#40000000"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    filled-new-array {v3, v4}, [I

    move-result-object v3

    invoke-direct {p1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 723
    const/16 v2, 0x19

    invoke-direct {p0, v2}, Lcom/dpmods/anime;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 724
    invoke-direct {p0, v1}, Lcom/dpmods/anime;->dp(I)I

    move-result v1

    const-string v2, "#80FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 725
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 726
    return-object v0
.end method

.method private createStrokeButton(Ljava/lang/String;)Landroid/widget/Button;
    .registers 6

    .line 696
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/dpmods/anime;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 697
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 698
    iget p1, p0, Lcom/dpmods/anime;->COL_STROKE:I

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 699
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 700
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Landroid/graphics/Typeface;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 701
    const/16 v1, 0xe

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 702
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 703
    const-string v3, "#15FFFFFF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 704
    const/16 v3, 0x19

    invoke-direct {p0, v3}, Lcom/dpmods/anime;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 705
    invoke-direct {p0, v2}, Lcom/dpmods/anime;->dp(I)I

    move-result v2

    iget v3, p0, Lcom/dpmods/anime;->COL_STROKE:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 706
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 707
    new-array p1, p1, [I

    invoke-virtual {v2, p1, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 708
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 709
    return-object v0
.end method

.method private dp(F)I
    .registers 3

    .line 803
    iget-object v0, p0, Lcom/dpmods/anime;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private dp(I)I
    .registers 3

    .line 802
    int-to-float p1, p1

    iget-object v0, p0, Lcom/dpmods/anime;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private fetchConfiguration()V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 175
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "https://raw.githubusercontent.com/instaboosterwesd/keyauth/refs/heads/main/json.txt"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 177
    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 178
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    nop

    .line 181
    :goto_26
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_197

    .line 183
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 185
    const-string v0, "settings"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_65

    .line 187
    const-string v2, "admin_url"

    iget-object v3, p0, Lcom/dpmods/anime;->ADMIN_URL:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dpmods/anime;->ADMIN_URL:Ljava/lang/String;

    .line 188
    const-string v2, "info_url"

    iget-object v3, p0, Lcom/dpmods/anime;->INFO_URL:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dpmods/anime;->INFO_URL:Ljava/lang/String;

    .line 189
    const-string v2, "info_msg"

    iget-object v3, p0, Lcom/dpmods/anime;->INFO_MSG:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dpmods/anime;->INFO_MSG:Ljava/lang/String;

    .line 190
    const-string v2, "key_validity"

    const-string v3, "24h"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dpmods/anime;->KEY_VALIDITY_STRING:Ljava/lang/String;

    .line 192
    :cond_65
    const-string v0, "shortener"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_95

    .line 194
    const-string v2, "base_url"

    iget-object v3, p0, Lcom/dpmods/anime;->SHORTENER_BASE:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dpmods/anime;->SHORTENER_BASE:Ljava/lang/String;

    .line 195
    const-string v2, "api_token"

    iget-object v3, p0, Lcom/dpmods/anime;->SHORTENER_TOKEN:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dpmods/anime;->SHORTENER_TOKEN:Ljava/lang/String;

    .line 196
    const-string v2, "json_key"

    iget-object v3, p0, Lcom/dpmods/anime;->SHORTENER_KEY_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dpmods/anime;->SHORTENER_KEY_NAME:Ljava/lang/String;

    .line 197
    const-string v2, "destination_trick"

    iget-object v3, p0, Lcom/dpmods/anime;->KEY_PAGE_BASE:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dpmods/anime;->KEY_PAGE_BASE:Ljava/lang/String;

    .line 199
    :cond_95
    const-string v0, "ui_text"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_e3

    .line 201
    const-string v2, "dialog_title"

    iget-object v3, p0, Lcom/dpmods/anime;->dialogTitle:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dpmods/anime;->dialogTitle:Ljava/lang/String;

    .line 202
    const-string v2, "dialog_subtitle"

    iget-object v3, p0, Lcom/dpmods/anime;->dialogSub:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dpmods/anime;->dialogSub:Ljava/lang/String;

    .line 203
    const-string v2, "btn_get_key"

    iget-object v3, p0, Lcom/dpmods/anime;->TXT_BTN_GET:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dpmods/anime;->TXT_BTN_GET:Ljava/lang/String;

    .line 204
    const-string v2, "btn_login"

    iget-object v3, p0, Lcom/dpmods/anime;->TXT_BTN_LOGIN:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dpmods/anime;->TXT_BTN_LOGIN:Ljava/lang/String;

    .line 205
    const-string v2, "btn_admin"

    iget-object v3, p0, Lcom/dpmods/anime;->TXT_BTN_ADMIN:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dpmods/anime;->TXT_BTN_ADMIN:Ljava/lang/String;

    .line 206
    const-string v2, "btn_update"

    iget-object v3, p0, Lcom/dpmods/anime;->TXT_BTN_UPDATE:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dpmods/anime;->TXT_BTN_UPDATE:Ljava/lang/String;

    .line 207
    const-string v2, "input_hint"

    iget-object v3, p0, Lcom/dpmods/anime;->TXT_HINT:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dpmods/anime;->TXT_HINT:Ljava/lang/String;

    .line 209
    :cond_e3
    const-string v0, "theme"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_131

    .line 211
    const-string v2, "bg_top"

    const-string v3, "#FF1A0020"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/dpmods/anime;->COL_BG_TOP:I

    .line 212
    const-string v2, "bg_bottom"

    const-string v3, "#FF050505"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/dpmods/anime;->COL_BG_BOT:I

    .line 213
    const-string v2, "accent_color"

    const-string v3, "#FF6200EE"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/dpmods/anime;->COL_ACCENT:I

    .line 214
    const-string v2, "text_color"

    const-string v3, "#FFFFFFFF"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/dpmods/anime;->COL_TEXT:I

    .line 215
    const-string v2, "btn_stroke_color"

    const-string v3, "#FF9D46FF"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dpmods/anime;->COL_STROKE:I

    .line 217
    :cond_131
    const-string v0, "time_settings"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_14d

    .line 219
    const-string v2, "api_url"

    iget-object v3, p0, Lcom/dpmods/anime;->TIME_API_BASE:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dpmods/anime;->TIME_API_BASE:Ljava/lang/String;

    .line 220
    const-string v2, "timezone"

    iget-object v3, p0, Lcom/dpmods/anime;->TIME_ZONE:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dpmods/anime;->TIME_ZONE:Ljava/lang/String;

    .line 222
    :cond_14d
    const-string v0, "update_system"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_19d

    .line 224
    const-string v1, "new_version"

    const-string v2, "3.2"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 225
    const-string v2, "update_url"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dpmods/anime;->updateUrl:Ljava/lang/String;

    .line 226
    const-string v2, "update_title"

    iget-object v3, p0, Lcom/dpmods/anime;->updateTitle:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dpmods/anime;->updateTitle:Ljava/lang/String;

    .line 227
    const-string v2, "update_msg"

    iget-object v3, p0, Lcom/dpmods/anime;->updateMsg:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dpmods/anime;->updateMsg:Ljava/lang/String;

    .line 228
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "3.2"

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    cmpl-double v0, v1, v3

    if-lez v0, :cond_19d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dpmods/anime;->isUpdateMode:Z

    goto :goto_19d

    .line 181
    :cond_197
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_19a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19a} :catch_19c

    goto/16 :goto_26

    .line 231
    :catch_19c
    move-exception v0

    :cond_19d
    :goto_19d
    return-void
.end method

.method private getGlobalTime()J
    .registers 5

    .line 564
    :try_start_0
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lcom/dpmods/anime;->TIME_API_BASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/dpmods/anime;->TIME_ZONE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 565
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 566
    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 567
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 569
    nop

    .line 570
    :goto_39
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_54

    .line 571
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 572
    const-string v0, "unixtime"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 573
    const/16 v2, 0x3e8

    int-to-long v2, v2

    mul-long v0, v0, v2

    return-wide v0

    .line 570
    :cond_54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_57} :catch_58

    goto :goto_39

    .line 573
    :catch_58
    move-exception v0

    .line 575
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private getMidnightTimestamp(J)J
    .registers 6

    .line 581
    :try_start_0
    iget-object v0, p0, Lcom/dpmods/anime;->TIME_ZONE:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 582
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 583
    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 584
    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 585
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 586
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 587
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 588
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    return-wide p1

    :catch_2c
    move-exception v0

    .line 590
    const v0, 0x5265c00

    int-to-long v0, v0

    add-long/2addr p1, v0

    return-wide p1
.end method

.method private handleGetKey()V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 595
    iget-object v0, p0, Lcom/dpmods/anime;->context:Landroid/content/Context;

    const-string v1, "Generating Link..."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 597
    iget-object v0, p0, Lcom/dpmods/anime;->context:Landroid/content/Context;

    const-string v1, "DPMods_Prefs"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 599
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "key_expiry_timestamp"

    int-to-long v4, v2

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "device_lock"

    const-string v3, "INVALID_SESSION"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 604
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/dpmods/anime$100000014;

    invoke-direct {v2, p0, v0}, Lcom/dpmods/anime$100000014;-><init>(Lcom/dpmods/anime;Landroid/content/SharedPreferences;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private handleLogin()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 654
    iget-object v0, p0, Lcom/dpmods/anime;->keyInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 655
    iget-object v1, p0, Lcom/dpmods/anime;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 657
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/dpmods/anime$100000017;

    invoke-direct {v3, p0, v0, v1}, Lcom/dpmods/anime$100000017;-><init>(Lcom/dpmods/anime;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private init()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dpmods/anime$100000001;

    invoke-direct {v1, p0}, Lcom/dpmods/anime$100000001;-><init>(Lcom/dpmods/anime;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private lockGetKeyButton()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 730
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dpmods/anime;->isRequestInProgress:Z

    .line 731
    iget-object v0, p0, Lcom/dpmods/anime;->btnGetKey:Landroid/widget/Button;

    const-string v1, "Wait..."

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 732
    iget-object v0, p0, Lcom/dpmods/anime;->btnGetKey:Landroid/widget/Button;

    const/high16 v1, 0x3f000000  # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 733
    iget-object v0, p0, Lcom/dpmods/anime;->btnGetKey:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private setupDirectAssetVideo(Landroid/view/TextureView;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/TextureView;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 748
    new-instance v0, Lcom/dpmods/anime$100000020;

    invoke-direct {v0, p0, p2, p1}, Lcom/dpmods/anime$100000020;-><init>(Lcom/dpmods/anime;Ljava/lang/String;Landroid/view/TextureView;)V

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method private unlockGetKeyButtonDelayed()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 737
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/dpmods/anime$100000018;

    invoke-direct {v1, p0}, Lcom/dpmods/anime$100000018;-><init>(Lcom/dpmods/anime;)V

    const/16 v2, 0x1f40

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public showDialog()V
    .registers 18

    .line 237
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/dpmods/anime;->isUpdateMode:Z

    if-eqz v1, :cond_update_redirect_skip

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, v0, Lcom/dpmods/anime;->updateUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, v0, Lcom/dpmods/anime;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_update_redirect_skip
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, v0, Lcom/dpmods/anime;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/dpmods/anime;->dialog:Landroid/app/Dialog;

    .line 238
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 239
    iget-object v1, v0, Lcom/dpmods/anime;->dialog:Landroid/app/Dialog;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 240
    iget-object v1, v0, Lcom/dpmods/anime;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 242
    iget-object v1, v0, Lcom/dpmods/anime;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v4, 0x11

    const/4 v5, -0x1

    if-eqz v1, :cond_7a

    .line 243
    iget-object v1, v0, Lcom/dpmods/anime;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 244
    iget-object v1, v0, Lcom/dpmods/anime;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Landroid/view/Window;->setLayout(II)V

    .line 245
    iget-object v1, v0, Lcom/dpmods/anime;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->setGravity(I)V

    .line 246
    iget-object v1, v0, Lcom/dpmods/anime;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v6, 0x100

    invoke-virtual {v1, v6}, Landroid/view/Window;->addFlags(I)V

    .line 247
    iget-object v1, v0, Lcom/dpmods/anime;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v6, 0x3f000000  # 0.5f

    invoke-virtual {v1, v6}, Landroid/view/Window;->setDimAmount(F)V

    .line 248
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1f

    if-lt v1, v6, :cond_7a

    .line 249
    iget-object v1, v0, Lcom/dpmods/anime;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Landroid/view/Window;->addFlags(I)V

    .line 250
    iget-object v1, v0, Lcom/dpmods/anime;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v6, 0x32

    invoke-virtual {v1, v6}, Landroid/view/WindowManager$LayoutParams;->setBlurBehindRadius(I)V

    .line 254
    :cond_7a
    iget-object v1, v0, Lcom/dpmods/anime;->dialog:Landroid/app/Dialog;

    new-instance v6, Lcom/dpmods/anime$100000002;

    invoke-direct {v6, v0}, Lcom/dpmods/anime$100000002;-><init>(Lcom/dpmods/anime;)V

    invoke-virtual {v1, v6}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 262
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v6, v0, Lcom/dpmods/anime;->context:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 263
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 265
    new-instance v6, Landroid/widget/ScrollView;

    iget-object v7, v0, Lcom/dpmods/anime;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 266
    invoke-virtual {v6, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 267
    invoke-virtual {v6, v3}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 269
    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v8, v0, Lcom/dpmods/anime;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 270
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 271
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 272
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    const/16 v8, 0x14

    invoke-direct {v0, v8}, Lcom/dpmods/anime;->dp(I)I

    move-result v9

    invoke-direct {v0, v8}, Lcom/dpmods/anime;->dp(I)I

    move-result v10

    invoke-virtual {v7, v3, v9, v3, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 274
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 276
    new-instance v9, Landroid/widget/FrameLayout;

    iget-object v10, v0, Lcom/dpmods/anime;->context:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 277
    const/16 v10, 0x140

    invoke-direct {v0, v10}, Lcom/dpmods/anime;->dp(I)I

    move-result v10

    .line 278
    const/16 v11, 0x18

    invoke-direct {v0, v11}, Lcom/dpmods/anime;->dp(I)I

    move-result v12

    .line 280
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    invoke-direct {v13, v10, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 281
    invoke-direct {v0, v8}, Lcom/dpmods/anime;->dp(I)I

    move-result v10

    invoke-direct {v0, v8}, Lcom/dpmods/anime;->dp(I)I

    move-result v15

    invoke-direct {v0, v8}, Lcom/dpmods/anime;->dp(I)I

    move-result v11

    invoke-direct {v0, v8}, Lcom/dpmods/anime;->dp(I)I

    move-result v4

    invoke-virtual {v13, v10, v15, v11, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 282
    invoke-virtual {v9, v13}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    new-instance v4, Lcom/dpmods/anime$TiltManager;

    iget-object v10, v0, Lcom/dpmods/anime;->context:Landroid/content/Context;

    invoke-direct {v4, v0, v10, v9}, Lcom/dpmods/anime$TiltManager;-><init>(Lcom/dpmods/anime;Landroid/content/Context;Landroid/view/View;)V

    iput-object v4, v0, Lcom/dpmods/anime;->tiltManager:Lcom/dpmods/anime$TiltManager;

    .line 285
    invoke-virtual {v4}, Lcom/dpmods/anime$TiltManager;->start()V

    .line 288
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    sget-object v10, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget v11, v0, Lcom/dpmods/anime;->COL_BG_TOP:I

    iget v13, v0, Lcom/dpmods/anime;->COL_BG_BOT:I

    filled-new-array {v11, v13}, [I

    move-result-object v11

    invoke-direct {v4, v10, v11}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 292
    int-to-float v10, v12

    invoke-virtual {v4, v10}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 293
    invoke-direct {v0, v2}, Lcom/dpmods/anime;->dp(I)I

    move-result v10

    const-string v11, "#30FFFFFF"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v4, v10, v11}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 294
    invoke-virtual {v9, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 296
    const/16 v4, 0x28

    invoke-direct {v0, v4}, Lcom/dpmods/anime;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 300
    new-instance v10, Landroid/view/View;

    iget-object v11, v0, Lcom/dpmods/anime;->context:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 301
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v13, 0xb4

    invoke-direct {v0, v13}, Lcom/dpmods/anime;->dp(I)I

    move-result v13

    invoke-direct {v11, v5, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 302
    const/16 v13, 0x31

    iput v13, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 303
    invoke-virtual {v10, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    new-instance v11, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v11}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 306
    invoke-virtual {v11, v2}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 307
    const/16 v13, 0xfa

    invoke-direct {v0, v13}, Lcom/dpmods/anime;->dp(I)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v11, v13}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 309
    const-string v13, "#60AA00FF"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    filled-new-array {v13, v3}, [I

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 310
    invoke-virtual {v10, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 311
    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 314
    new-instance v10, Lcom/dpmods/anime$SparkleBorderView;

    iget-object v11, v0, Lcom/dpmods/anime;->context:Landroid/content/Context;

    invoke-direct {v10, v0, v11, v12}, Lcom/dpmods/anime$SparkleBorderView;-><init>(Lcom/dpmods/anime;Landroid/content/Context;I)V

    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v11, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    new-instance v10, Lcom/dpmods/anime$CinematicParticleView;

    iget-object v11, v0, Lcom/dpmods/anime;->context:Landroid/content/Context;

    invoke-direct {v10, v0, v11}, Lcom/dpmods/anime$CinematicParticleView;-><init>(Lcom/dpmods/anime;Landroid/content/Context;)V

    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v11, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    new-instance v10, Landroid/widget/LinearLayout;

    iget-object v11, v0, Lcom/dpmods/anime;->context:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 322
    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 323
    const v11, 0x800015

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 325
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v11, v5, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 326
    const/16 v12, 0x35

    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 327
    const/16 v12, 0xf

    invoke-direct {v0, v12}, Lcom/dpmods/anime;->dp(I)I

    move-result v13

    invoke-direct {v0, v12}, Lcom/dpmods/anime;->dp(I)I

    move-result v15

    invoke-virtual {v11, v3, v13, v15, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 328
    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    new-instance v11, Landroid/widget/TextView;

    iget-object v13, v0, Lcom/dpmods/anime;->context:Landroid/content/Context;

    invoke-direct {v11, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 332
    iget-object v13, v0, Lcom/dpmods/anime;->INFO_MSG:Ljava/lang/String;

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 334
    const/16 v13, 0xc

    int-to-float v15, v13

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setTextSize(F)V

    .line 335
    invoke-direct {v0, v13}, Lcom/dpmods/anime;->dp(I)I

    move-result v15

    const/4 v4, 0x5

    invoke-direct {v0, v4}, Lcom/dpmods/anime;->dp(I)I

    move-result v12

    invoke-direct {v0, v13}, Lcom/dpmods/anime;->dp(I)I

    move-result v13

    invoke-direct {v0, v4}, Lcom/dpmods/anime;->dp(I)I

    move-result v4

    invoke-virtual {v11, v15, v12, v13, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 336
    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 337
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 340
    const-string v12, "#CC000000"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v4, v12}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 341
    invoke-direct {v0, v8}, Lcom/dpmods/anime;->dp(I)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v4, v12}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 342
    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 344
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 345
    const/16 v12, 0x8

    invoke-direct {v0, v12}, Lcom/dpmods/anime;->dp(I)I

    move-result v12

    invoke-virtual {v4, v3, v3, v12, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 346
    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    new-instance v4, Landroid/widget/TextView;

    iget-object v12, v0, Lcom/dpmods/anime;->context:Landroid/content/Context;

    invoke-direct {v4, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 350
    const-string v12, "i"

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 352
    const/16 v12, 0x10

    int-to-float v13, v12

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 354
    const-string v13, "serif"

    invoke-static {v13, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 355
    const/16 v13, 0x11

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 357
    new-instance v13, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v13}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 358
    invoke-virtual {v13, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 359
    const-string v14, "#44FFFFFF"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 360
    invoke-direct {v0, v2}, Lcom/dpmods/anime;->dp(I)I

    move-result v14

    iget v15, v0, Lcom/dpmods/anime;->COL_STROKE:I

    invoke-virtual {v13, v14, v15}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 361
    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 363
    const/16 v13, 0x20

    invoke-direct {v0, v13}, Lcom/dpmods/anime;->dp(I)I

    move-result v13

    .line 364
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v14, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 365
    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    new-instance v13, Lcom/dpmods/anime$100000003;

    invoke-direct {v13, v0}, Lcom/dpmods/anime$100000003;-><init>(Lcom/dpmods/anime;)V

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 376
    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 379
    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 380
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->bringToFront()V

    .line 383
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v4, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v10, Lcom/dpmods/anime$100000005;

    invoke-direct {v10, v0, v11}, Lcom/dpmods/anime$100000005;-><init>(Lcom/dpmods/anime;Landroid/widget/TextView;)V

    const/16 v11, 0xdac

    int-to-long v13, v11

    invoke-virtual {v4, v10, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 403
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v10, v0, Lcom/dpmods/anime;->context:Landroid/content/Context;

    invoke-direct {v4, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 404
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 405
    const/16 v10, 0x19

    invoke-direct {v0, v10}, Lcom/dpmods/anime;->dp(I)I

    move-result v11

    const/16 v13, 0x1e

    invoke-direct {v0, v13}, Lcom/dpmods/anime;->dp(I)I

    move-result v14

    invoke-direct {v0, v10}, Lcom/dpmods/anime;->dp(I)I

    move-result v15

    invoke-direct {v0, v13}, Lcom/dpmods/anime;->dp(I)I

    move-result v13

    invoke-virtual {v4, v11, v14, v15, v13}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 408
    new-instance v11, Landroid/widget/LinearLayout;

    iget-object v13, v0, Lcom/dpmods/anime;->context:Landroid/content/Context;

    invoke-direct {v11, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 409
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 410
    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 412
    const/16 v12, 0x4b

    invoke-direct {v0, v12}, Lcom/dpmods/anime;->dp(I)I

    move-result v12

    .line 413
    new-instance v13, Landroid/widget/FrameLayout;

    iget-object v14, v0, Lcom/dpmods/anime;->context:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 414
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v14, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 415
    const/16 v12, 0xf

    invoke-direct {v0, v12}, Lcom/dpmods/anime;->dp(I)I

    move-result v15

    invoke-virtual {v14, v3, v3, v15, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 416
    invoke-virtual {v13, v14}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 418
    new-instance v12, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v12}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 419
    invoke-virtual {v12, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 420
    const-string v14, "#FF101010"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 421
    invoke-virtual {v13, v12}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 423
    new-instance v12, Landroid/view/TextureView;

    iget-object v14, v0, Lcom/dpmods/anime;->context:Landroid/content/Context;

    invoke-direct {v12, v14}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 424
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v14, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 425
    const/16 v15, 0x11

    iput v15, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 426
    invoke-virtual {v12, v14}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 427
    const/high16 v14, 0x3f800000  # 1.0f

    invoke-virtual {v12, v14}, Landroid/view/TextureView;->setAlpha(F)V

    .line 429
    nop

    .line 430
    new-instance v15, Lcom/dpmods/anime$100000006;

    invoke-direct {v15, v0}, Lcom/dpmods/anime$100000006;-><init>(Lcom/dpmods/anime;)V

    invoke-virtual {v13, v15}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 433
    invoke-virtual {v13, v2}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 436
    invoke-virtual {v13, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 437
    const-string v15, "dp.mp4"

    invoke-direct {v0, v12, v15}, Lcom/dpmods/anime;->setupDirectAssetVideo(Landroid/view/TextureView;Ljava/lang/String;)V

    .line 439
    new-instance v12, Lcom/dpmods/anime$GradientRingView;

    iget-object v15, v0, Lcom/dpmods/anime;->context:Landroid/content/Context;

    invoke-direct {v12, v0, v15}, Lcom/dpmods/anime$GradientRingView;-><init>(Lcom/dpmods/anime;Landroid/content/Context;)V

    .line 440
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v15, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v12, v15}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 441
    invoke-virtual {v11, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 444
    new-instance v12, Landroid/widget/LinearLayout;

    iget-object v13, v0, Lcom/dpmods/anime;->context:Landroid/content/Context;

    invoke-direct {v12, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 445
    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 446
    new-instance v13, Landroid/widget/TextView;

    iget-object v15, v0, Lcom/dpmods/anime;->context:Landroid/content/Context;

    invoke-direct {v13, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 447
    iget-boolean v15, v0, Lcom/dpmods/anime;->isUpdateMode:Z

    if-eqz v15, :cond_332

    iget-object v15, v0, Lcom/dpmods/anime;->updateTitle:Ljava/lang/String;

    goto :goto_334

    :cond_332
    iget-object v15, v0, Lcom/dpmods/anime;->dialogTitle:Ljava/lang/String;

    :goto_334
    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    iget v15, v0, Lcom/dpmods/anime;->COL_TEXT:I

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 449
    const/16 v15, 0x18

    int-to-float v15, v15

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setTextSize(F)V

    .line 450
    const/4 v15, 0x0

    move-object/from16 v16, v15

    check-cast v16, Landroid/graphics/Typeface;

    invoke-virtual {v13, v15, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 451
    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 453
    new-instance v13, Landroid/widget/TextView;

    iget-object v15, v0, Lcom/dpmods/anime;->context:Landroid/content/Context;

    invoke-direct {v13, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 454
    iget-boolean v15, v0, Lcom/dpmods/anime;->isUpdateMode:Z

    if-eqz v15, :cond_35b

    iget-object v15, v0, Lcom/dpmods/anime;->updateMsg:Ljava/lang/String;

    goto :goto_35d

    :cond_35b
    iget-object v15, v0, Lcom/dpmods/anime;->dialogSub:Ljava/lang/String;

    :goto_35d
    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    const-string v15, "#CCCCCC"

    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 456
    const/16 v15, 0xf

    int-to-float v14, v15

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 457
    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 458
    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 459
    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 461
    iget-boolean v11, v0, Lcom/dpmods/anime;->isUpdateMode:Z

    const/16 v12, 0x30

    const/16 v13, 0xa

    if-eqz v11, :cond_3d4

    .line 463
    iget-object v2, v0, Lcom/dpmods/anime;->TXT_BTN_UPDATE:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/dpmods/anime;->createSolidButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, v0, Lcom/dpmods/anime;->btnAction:Landroid/widget/Button;

    .line 464
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v12}, Lcom/dpmods/anime;->dp(I)I

    move-result v8

    invoke-direct {v2, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 465
    invoke-direct {v0, v10}, Lcom/dpmods/anime;->dp(I)I

    move-result v8

    invoke-virtual {v2, v3, v8, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 466
    iget-object v8, v0, Lcom/dpmods/anime;->btnAction:Landroid/widget/Button;

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    iget-object v2, v0, Lcom/dpmods/anime;->btnAction:Landroid/widget/Button;

    new-instance v8, Lcom/dpmods/anime$100000007;

    invoke-direct {v8, v0}, Lcom/dpmods/anime$100000007;-><init>(Lcom/dpmods/anime;)V

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 474
    iget-object v2, v0, Lcom/dpmods/anime;->btnAction:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 476
    iget-object v2, v0, Lcom/dpmods/anime;->TXT_BTN_ADMIN:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/dpmods/anime;->createStrokeButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    .line 477
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v10, 0x28

    invoke-direct {v0, v10}, Lcom/dpmods/anime;->dp(I)I

    move-result v10

    invoke-direct {v8, v5, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 478
    invoke-direct {v0, v13}, Lcom/dpmods/anime;->dp(I)I

    move-result v5

    invoke-virtual {v8, v3, v5, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 479
    invoke-virtual {v2, v8}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 480
    new-instance v3, Lcom/dpmods/anime$100000008;

    invoke-direct {v3, v0}, Lcom/dpmods/anime$100000008;-><init>(Lcom/dpmods/anime;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_4fc

    .line 491
    :cond_3d4
    new-instance v10, Landroid/widget/EditText;

    iget-object v11, v0, Lcom/dpmods/anime;->context:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lcom/dpmods/anime;->keyInput:Landroid/widget/EditText;

    .line 492
    iget-object v11, v0, Lcom/dpmods/anime;->TXT_HINT:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v10, v0, Lcom/dpmods/anime;->keyInput:Landroid/widget/EditText;

    const-string v11, "#80FFFFFF"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 494
    iget-object v10, v0, Lcom/dpmods/anime;->keyInput:Landroid/widget/EditText;

    iget v11, v0, Lcom/dpmods/anime;->COL_TEXT:I

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setTextColor(I)V

    .line 495
    iget-object v10, v0, Lcom/dpmods/anime;->keyInput:Landroid/widget/EditText;

    const/16 v11, 0xe

    int-to-float v11, v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setTextSize(F)V

    .line 496
    iget-object v10, v0, Lcom/dpmods/anime;->keyInput:Landroid/widget/EditText;

    invoke-virtual {v10, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 497
    iget-object v10, v0, Lcom/dpmods/anime;->keyInput:Landroid/widget/EditText;

    const/16 v11, 0x11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setGravity(I)V

    .line 499
    new-instance v10, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 500
    const-string v11, "#33000000"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 501
    const/16 v11, 0xf

    invoke-direct {v0, v11}, Lcom/dpmods/anime;->dp(I)I

    move-result v14

    int-to-float v11, v14

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 502
    invoke-direct {v0, v2}, Lcom/dpmods/anime;->dp(I)I

    move-result v2

    iget v11, v0, Lcom/dpmods/anime;->COL_STROKE:I

    invoke-virtual {v10, v2, v11}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 503
    iget-object v2, v0, Lcom/dpmods/anime;->keyInput:Landroid/widget/EditText;

    invoke-virtual {v2, v10}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 505
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v10, 0x2d

    invoke-direct {v0, v10}, Lcom/dpmods/anime;->dp(I)I

    move-result v10

    invoke-direct {v2, v5, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 506
    invoke-direct {v0, v8}, Lcom/dpmods/anime;->dp(I)I

    move-result v10

    invoke-direct {v0, v8}, Lcom/dpmods/anime;->dp(I)I

    move-result v8

    invoke-virtual {v2, v3, v10, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 507
    iget-object v8, v0, Lcom/dpmods/anime;->keyInput:Landroid/widget/EditText;

    invoke-virtual {v8, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 508
    iget-object v2, v0, Lcom/dpmods/anime;->keyInput:Landroid/widget/EditText;

    invoke-direct {v0, v13}, Lcom/dpmods/anime;->dp(I)I

    move-result v8

    invoke-direct {v0, v13}, Lcom/dpmods/anime;->dp(I)I

    move-result v10

    invoke-virtual {v2, v8, v3, v10, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 509
    iget-object v2, v0, Lcom/dpmods/anime;->keyInput:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 511
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v8, v0, Lcom/dpmods/anime;->context:Landroid/content/Context;

    invoke-direct {v2, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 512
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 513
    const/4 v8, 0x2

    int-to-float v8, v8

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 515
    iget-object v8, v0, Lcom/dpmods/anime;->TXT_BTN_GET:Ljava/lang/String;

    invoke-direct {v0, v8}, Lcom/dpmods/anime;->createStrokeButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v8

    iput-object v8, v0, Lcom/dpmods/anime;->btnGetKey:Landroid/widget/Button;

    .line 516
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v10, 0x28

    invoke-direct {v0, v10}, Lcom/dpmods/anime;->dp(I)I

    move-result v11

    const/high16 v10, 0x3f800000  # 1.0f

    invoke-direct {v8, v3, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 517
    const/4 v10, 0x6

    invoke-direct {v0, v10}, Lcom/dpmods/anime;->dp(I)I

    move-result v11

    invoke-virtual {v8, v3, v3, v11, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 518
    iget-object v11, v0, Lcom/dpmods/anime;->btnGetKey:Landroid/widget/Button;

    invoke-virtual {v11, v8}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 519
    iget-object v8, v0, Lcom/dpmods/anime;->btnGetKey:Landroid/widget/Button;

    new-instance v11, Lcom/dpmods/anime$100000009;

    invoke-direct {v11, v0}, Lcom/dpmods/anime$100000009;-><init>(Lcom/dpmods/anime;)V

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    iget-object v8, v0, Lcom/dpmods/anime;->btnGetKey:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 527
    iget-object v8, v0, Lcom/dpmods/anime;->TXT_BTN_ADMIN:Ljava/lang/String;

    invoke-direct {v0, v8}, Lcom/dpmods/anime;->createStrokeButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v8

    iput-object v8, v0, Lcom/dpmods/anime;->btnAdmin:Landroid/widget/Button;

    .line 528
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v11, 0x28

    invoke-direct {v0, v11}, Lcom/dpmods/anime;->dp(I)I

    move-result v11

    const/high16 v13, 0x3f800000  # 1.0f

    invoke-direct {v8, v3, v11, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 529
    invoke-direct {v0, v10}, Lcom/dpmods/anime;->dp(I)I

    move-result v10

    invoke-virtual {v8, v10, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 530
    iget-object v10, v0, Lcom/dpmods/anime;->btnAdmin:Landroid/widget/Button;

    invoke-virtual {v10, v8}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 531
    iget-object v8, v0, Lcom/dpmods/anime;->btnAdmin:Landroid/widget/Button;

    new-instance v10, Lcom/dpmods/anime$100000010;

    invoke-direct {v10, v0}, Lcom/dpmods/anime$100000010;-><init>(Lcom/dpmods/anime;)V

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 538
    iget-object v8, v0, Lcom/dpmods/anime;->btnAdmin:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 539
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 541
    iget-object v2, v0, Lcom/dpmods/anime;->TXT_BTN_LOGIN:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/dpmods/anime;->createSolidButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, v0, Lcom/dpmods/anime;->btnAction:Landroid/widget/Button;

    .line 542
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v12}, Lcom/dpmods/anime;->dp(I)I

    move-result v8

    invoke-direct {v2, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 543
    const/16 v5, 0xf

    invoke-direct {v0, v5}, Lcom/dpmods/anime;->dp(I)I

    move-result v5

    invoke-virtual {v2, v3, v5, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 544
    iget-object v3, v0, Lcom/dpmods/anime;->btnAction:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 545
    iget-object v2, v0, Lcom/dpmods/anime;->btnAction:Landroid/widget/Button;

    new-instance v3, Lcom/dpmods/anime$100000011;

    invoke-direct {v3, v0}, Lcom/dpmods/anime$100000011;-><init>(Lcom/dpmods/anime;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 550
    iget-object v2, v0, Lcom/dpmods/anime;->btnAction:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 553
    :goto_4fc
    invoke-virtual {v9, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 555
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 556
    invoke-virtual {v6, v7}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 557
    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 558
    iget-object v2, v0, Lcom/dpmods/anime;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 559
    iget-object v1, v0, Lcom/dpmods/anime;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method
