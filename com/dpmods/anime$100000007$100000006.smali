.class Lcom/dpmods/anime$100000007$100000006;
.super Ljava/lang/Object;
.source "anime.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime$100000007;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000006"
.end annotation


# instance fields
.field private final this$0:Lcom/dpmods/anime$100000007;


# direct methods
.method constructor <init>(Lcom/dpmods/anime$100000007;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$100000007$100000006;->this$0:Lcom/dpmods/anime$100000007;

    return-void
.end method

.method static access$0(Lcom/dpmods/anime$100000007$100000006;)Lcom/dpmods/anime$100000007;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$100000007$100000006;->this$0:Lcom/dpmods/anime$100000007;

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

    .line 367
    iget-object v0, p0, Lcom/dpmods/anime$100000007$100000006;->this$0:Lcom/dpmods/anime$100000007;

    invoke-static {v0}, Lcom/dpmods/anime$100000007;->access$0(Lcom/dpmods/anime$100000007;)Lcom/dpmods/anime;

    move-result-object v0

    invoke-static {v0}, Lcom/dpmods/anime;->access$L1000000(Lcom/dpmods/anime;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Error. Check Internet."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 368
    iget-object v0, p0, Lcom/dpmods/anime$100000007$100000006;->this$0:Lcom/dpmods/anime$100000007;

    invoke-static {v0}, Lcom/dpmods/anime$100000007;->access$0(Lcom/dpmods/anime$100000007;)Lcom/dpmods/anime;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/dpmods/anime;->access$S1000015(Lcom/dpmods/anime;Z)V

    .line 369
    iget-object v0, p0, Lcom/dpmods/anime$100000007$100000006;->this$0:Lcom/dpmods/anime$100000007;

    invoke-static {v0}, Lcom/dpmods/anime$100000007;->access$0(Lcom/dpmods/anime$100000007;)Lcom/dpmods/anime;

    move-result-object v0

    invoke-static {v0}, Lcom/dpmods/anime;->access$L1000013(Lcom/dpmods/anime;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "Get Key"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v0, p0, Lcom/dpmods/anime$100000007$100000006;->this$0:Lcom/dpmods/anime$100000007;

    invoke-static {v0}, Lcom/dpmods/anime$100000007;->access$0(Lcom/dpmods/anime$100000007;)Lcom/dpmods/anime;

    move-result-object v0

    invoke-static {v0}, Lcom/dpmods/anime;->access$L1000013(Lcom/dpmods/anime;)Landroid/widget/Button;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 371
    iget-object v0, p0, Lcom/dpmods/anime$100000007$100000006;->this$0:Lcom/dpmods/anime$100000007;

    invoke-static {v0}, Lcom/dpmods/anime$100000007;->access$0(Lcom/dpmods/anime$100000007;)Lcom/dpmods/anime;

    move-result-object v0

    invoke-static {v0}, Lcom/dpmods/anime;->access$L1000013(Lcom/dpmods/anime;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
