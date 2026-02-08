.class Lcom/dpmods/anime$100000002$100000001;
.super Ljava/lang/Object;
.source "anime.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime$100000002;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000001"
.end annotation


# instance fields
.field private final this$0:Lcom/dpmods/anime$100000002;

.field private final synthetic val$isValid:Z


# direct methods
.method constructor <init>(Lcom/dpmods/anime$100000002;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$100000002$100000001;->this$0:Lcom/dpmods/anime$100000002;

    iput-boolean p2, p0, Lcom/dpmods/anime$100000002$100000001;->val$isValid:Z

    return-void
.end method

.method static access$0(Lcom/dpmods/anime$100000002$100000001;)Lcom/dpmods/anime$100000002;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$100000002$100000001;->this$0:Lcom/dpmods/anime$100000002;

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

    .line 228
    iget-object v0, p0, Lcom/dpmods/anime$100000002$100000001;->this$0:Lcom/dpmods/anime$100000002;

    invoke-static {v0}, Lcom/dpmods/anime$100000002;->access$0(Lcom/dpmods/anime$100000002;)Lcom/dpmods/anime;

    move-result-object v0

    invoke-static {v0}, Lcom/dpmods/anime;->access$L1000015(Lcom/dpmods/anime;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/dpmods/anime$100000002$100000001;->this$0:Lcom/dpmods/anime$100000002;

    invoke-static {v0}, Lcom/dpmods/anime$100000002;->access$0(Lcom/dpmods/anime$100000002;)Lcom/dpmods/anime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dpmods/anime;->showDialog()V

    goto :goto_50

    .line 229
    :cond_16
    iget-object v0, p0, Lcom/dpmods/anime$100000002$100000001;->this$0:Lcom/dpmods/anime$100000002;

    invoke-static {v0}, Lcom/dpmods/anime$100000002;->access$0(Lcom/dpmods/anime$100000002;)Lcom/dpmods/anime;

    move-result-object v0

    invoke-static {v0}, Lcom/dpmods/anime;->access$L1000014(Lcom/dpmods/anime;)Z

    move-result v0

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/dpmods/anime$100000002$100000001;->this$0:Lcom/dpmods/anime$100000002;

    invoke-static {v0}, Lcom/dpmods/anime$100000002;->access$0(Lcom/dpmods/anime$100000002;)Lcom/dpmods/anime;

    move-result-object v0

    invoke-static {v0}, Lcom/dpmods/anime;->access$L1000013(Lcom/dpmods/anime;)Z

    move-result v0

    if-nez v0, :cond_47

    iget-boolean v0, p0, Lcom/dpmods/anime$100000002$100000001;->val$isValid:Z

    if-eqz v0, :cond_47

    .line 230
    iget-object v0, p0, Lcom/dpmods/anime$100000002$100000001;->this$0:Lcom/dpmods/anime$100000002;

    invoke-static {v0}, Lcom/dpmods/anime$100000002;->access$0(Lcom/dpmods/anime$100000002;)Lcom/dpmods/anime;

    move-result-object v0

    invoke-static {v0}, Lcom/dpmods/anime;->access$L1000000(Lcom/dpmods/anime;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Welcome back!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_50

    .line 232
    :cond_47
    iget-object v0, p0, Lcom/dpmods/anime$100000002$100000001;->this$0:Lcom/dpmods/anime$100000002;

    invoke-static {v0}, Lcom/dpmods/anime$100000002;->access$0(Lcom/dpmods/anime$100000002;)Lcom/dpmods/anime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dpmods/anime;->showDialog()V

    :goto_50
    return-void
.end method
