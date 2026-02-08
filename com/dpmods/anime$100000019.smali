.class Lcom/dpmods/anime$100000019;
.super Ljava/lang/Object;
.source "anime.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000019"
.end annotation


# instance fields
.field private final this$0:Lcom/dpmods/anime;


# direct methods
.method constructor <init>(Lcom/dpmods/anime;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$100000019;->this$0:Lcom/dpmods/anime;

    return-void
.end method

.method static access$0(Lcom/dpmods/anime$100000019;)Lcom/dpmods/anime;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$100000019;->this$0:Lcom/dpmods/anime;

    return-object p0
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 781
    iget-object v0, p0, Lcom/dpmods/anime$100000019;->this$0:Lcom/dpmods/anime;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dpmods/anime;->access$S1000040(Lcom/dpmods/anime;Z)V

    .line 782
    iget-object v0, p0, Lcom/dpmods/anime$100000019;->this$0:Lcom/dpmods/anime;

    invoke-static {v0}, Lcom/dpmods/anime;->access$L1000036(Lcom/dpmods/anime;)Landroid/widget/Button;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x1

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/dpmods/anime$100000019;->this$0:Lcom/dpmods/anime;

    invoke-static {v0}, Lcom/dpmods/anime;->access$L1000036(Lcom/dpmods/anime;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/dpmods/anime$100000019;->this$0:Lcom/dpmods/anime;

    invoke-static {v0}, Lcom/dpmods/anime;->access$L1000036(Lcom/dpmods/anime;)Landroid/widget/Button;

    move-result-object v0

    iget-object v3, p0, Lcom/dpmods/anime$100000019;->this$0:Lcom/dpmods/anime;

    invoke-static {v3}, Lcom/dpmods/anime;->access$L1000022(Lcom/dpmods/anime;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dpmods/anime$100000019;->this$0:Lcom/dpmods/anime;

    invoke-static {v0}, Lcom/dpmods/anime;->access$L1000036(Lcom/dpmods/anime;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 783
    :cond_32
    iget-object v0, p0, Lcom/dpmods/anime$100000019;->this$0:Lcom/dpmods/anime;

    invoke-static {v0}, Lcom/dpmods/anime;->access$L1000038(Lcom/dpmods/anime;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/dpmods/anime$100000019;->this$0:Lcom/dpmods/anime;

    invoke-static {v0}, Lcom/dpmods/anime;->access$L1000038(Lcom/dpmods/anime;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/dpmods/anime$100000019;->this$0:Lcom/dpmods/anime;

    invoke-static {v0}, Lcom/dpmods/anime;->access$L1000038(Lcom/dpmods/anime;)Landroid/widget/Button;

    move-result-object v0

    iget-object v2, p0, Lcom/dpmods/anime$100000019;->this$0:Lcom/dpmods/anime;

    invoke-static {v2}, Lcom/dpmods/anime;->access$L1000023(Lcom/dpmods/anime;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dpmods/anime$100000019;->this$0:Lcom/dpmods/anime;

    invoke-static {v0}, Lcom/dpmods/anime;->access$L1000038(Lcom/dpmods/anime;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    :cond_5b
    return-void
.end method
