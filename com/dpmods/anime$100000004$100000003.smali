.class Lcom/dpmods/anime$100000004$100000003;
.super Ljava/lang/Object;
.source "anime.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime$100000004;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000003"
.end annotation


# instance fields
.field private final this$0:Lcom/dpmods/anime$100000004;


# direct methods
.method constructor <init>(Lcom/dpmods/anime$100000004;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$100000004$100000003;->this$0:Lcom/dpmods/anime$100000004;

    return-void
.end method

.method static access$0(Lcom/dpmods/anime$100000004$100000003;)Lcom/dpmods/anime$100000004;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$100000004$100000003;->this$0:Lcom/dpmods/anime$100000004;

    return-object p0
.end method


# virtual methods
.method public run()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 323
    iget-object v0, p0, Lcom/dpmods/anime$100000004$100000003;->this$0:Lcom/dpmods/anime$100000004;

    invoke-static {v0}, Lcom/dpmods/anime$100000004;->access$0(Lcom/dpmods/anime$100000004;)Lcom/dpmods/anime;

    move-result-object v0

    invoke-static {v0}, Lcom/dpmods/anime;->access$L1000000(Lcom/dpmods/anime;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Network Error. Opening Group..."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 324
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 325
    const-string v1, "https://t.me/keydialogtest"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 326
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 327
    iget-object v1, p0, Lcom/dpmods/anime$100000004$100000003;->this$0:Lcom/dpmods/anime$100000004;

    invoke-static {v1}, Lcom/dpmods/anime$100000004;->access$0(Lcom/dpmods/anime$100000004;)Lcom/dpmods/anime;

    move-result-object v1

    invoke-static {v1}, Lcom/dpmods/anime;->access$L1000000(Lcom/dpmods/anime;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
