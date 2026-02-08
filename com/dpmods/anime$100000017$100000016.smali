.class Lcom/dpmods/anime$100000017$100000016;
.super Ljava/lang/Object;
.source "anime.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime$100000017;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000016"
.end annotation


# instance fields
.field private final this$0:Lcom/dpmods/anime$100000017;


# direct methods
.method constructor <init>(Lcom/dpmods/anime$100000017;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$100000017$100000016;->this$0:Lcom/dpmods/anime$100000017;

    return-void
.end method

.method static access$0(Lcom/dpmods/anime$100000017$100000016;)Lcom/dpmods/anime$100000017;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$100000017$100000016;->this$0:Lcom/dpmods/anime$100000017;

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

    .line 686
    iget-object v0, p0, Lcom/dpmods/anime$100000017$100000016;->this$0:Lcom/dpmods/anime$100000017;

    invoke-static {v0}, Lcom/dpmods/anime$100000017;->access$0(Lcom/dpmods/anime$100000017;)Lcom/dpmods/anime;

    move-result-object v0

    invoke-static {v0}, Lcom/dpmods/anime;->access$L1000000(Lcom/dpmods/anime;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Access Granted. Valid until Midnight."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 687
    iget-object v0, p0, Lcom/dpmods/anime$100000017$100000016;->this$0:Lcom/dpmods/anime$100000017;

    invoke-static {v0}, Lcom/dpmods/anime$100000017;->access$0(Lcom/dpmods/anime$100000017;)Lcom/dpmods/anime;

    move-result-object v0

    invoke-static {v0}, Lcom/dpmods/anime;->access$L1000035(Lcom/dpmods/anime;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
