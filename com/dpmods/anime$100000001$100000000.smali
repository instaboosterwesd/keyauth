.class Lcom/dpmods/anime$100000001$100000000;
.super Ljava/lang/Object;
.source "anime.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime$100000001;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/dpmods/anime$100000001;

.field private final synthetic val$finalValid:Z


# direct methods
.method constructor <init>(Lcom/dpmods/anime$100000001;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$100000001$100000000;->this$0:Lcom/dpmods/anime$100000001;

    iput-boolean p2, p0, Lcom/dpmods/anime$100000001$100000000;->val$finalValid:Z

    return-void
.end method

.method static access$0(Lcom/dpmods/anime$100000001$100000000;)Lcom/dpmods/anime$100000001;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$100000001$100000000;->this$0:Lcom/dpmods/anime$100000001;

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

    .line 162
    iget-object v0, p0, Lcom/dpmods/anime$100000001$100000000;->this$0:Lcom/dpmods/anime$100000001;

    invoke-static {v0}, Lcom/dpmods/anime$100000001;->access$0(Lcom/dpmods/anime$100000001;)Lcom/dpmods/anime;

    move-result-object v0

    invoke-static {v0}, Lcom/dpmods/anime;->access$L1000020(Lcom/dpmods/anime;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-boolean v0, p0, Lcom/dpmods/anime$100000001$100000000;->val$finalValid:Z

    if-eqz v0, :cond_25

    .line 163
    iget-object v0, p0, Lcom/dpmods/anime$100000001$100000000;->this$0:Lcom/dpmods/anime$100000001;

    invoke-static {v0}, Lcom/dpmods/anime$100000001;->access$0(Lcom/dpmods/anime$100000001;)Lcom/dpmods/anime;

    move-result-object v0

    invoke-static {v0}, Lcom/dpmods/anime;->access$L1000000(Lcom/dpmods/anime;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Access Granted. Expires at Midnight."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2e

    .line 165
    :cond_25
    iget-object v0, p0, Lcom/dpmods/anime$100000001$100000000;->this$0:Lcom/dpmods/anime$100000001;

    invoke-static {v0}, Lcom/dpmods/anime$100000001;->access$0(Lcom/dpmods/anime$100000001;)Lcom/dpmods/anime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dpmods/anime;->showDialog()V

    :goto_2e
    return-void
.end method
