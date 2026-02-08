.class Lcom/dpmods/anime$100000011$100000009;
.super Ljava/lang/Object;
.source "anime.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime$100000011;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000009"
.end annotation


# instance fields
.field private final this$0:Lcom/dpmods/anime$100000011;

.field private final synthetic val$finalUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dpmods/anime$100000011;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$100000011$100000009;->this$0:Lcom/dpmods/anime$100000011;

    iput-object p2, p0, Lcom/dpmods/anime$100000011$100000009;->val$finalUrl:Ljava/lang/String;

    return-void
.end method

.method static access$0(Lcom/dpmods/anime$100000011$100000009;)Lcom/dpmods/anime$100000011;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$100000011$100000009;->this$0:Lcom/dpmods/anime$100000011;

    return-object p0
.end method


# virtual methods
.method public run()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 545
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 546
    iget-object v1, p0, Lcom/dpmods/anime$100000011$100000009;->val$finalUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 547
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 548
    iget-object v1, p0, Lcom/dpmods/anime$100000011$100000009;->this$0:Lcom/dpmods/anime$100000011;

    invoke-static {v1}, Lcom/dpmods/anime$100000011;->access$0(Lcom/dpmods/anime$100000011;)Lcom/dpmods/anime;

    move-result-object v1

    invoke-static {v1}, Lcom/dpmods/anime;->access$L1000000(Lcom/dpmods/anime;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 549
    iget-object v0, p0, Lcom/dpmods/anime$100000011$100000009;->this$0:Lcom/dpmods/anime$100000011;

    invoke-static {v0}, Lcom/dpmods/anime$100000011;->access$0(Lcom/dpmods/anime$100000011;)Lcom/dpmods/anime;

    move-result-object v0

    invoke-static {v0}, Lcom/dpmods/anime;->access$1000062(Lcom/dpmods/anime;)V

    return-void
.end method
