.class Lcom/dpmods/anime$ValidateKeyTask$100000002;
.super Ljava/lang/Object;
.source "anime.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime$ValidateKeyTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000002"
.end annotation


# instance fields
.field private final this$0:Lcom/dpmods/anime$ValidateKeyTask;


# direct methods
.method constructor <init>(Lcom/dpmods/anime$ValidateKeyTask;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$ValidateKeyTask$100000002;->this$0:Lcom/dpmods/anime$ValidateKeyTask;

    return-void
.end method

.method static access$0(Lcom/dpmods/anime$ValidateKeyTask$100000002;)Lcom/dpmods/anime$ValidateKeyTask;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$ValidateKeyTask$100000002;->this$0:Lcom/dpmods/anime$ValidateKeyTask;

    return-object p0
.end method


# virtual methods
.method public run()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 665
    :try_start_0
    iget-object v0, p0, Lcom/dpmods/anime$ValidateKeyTask$100000002;->this$0:Lcom/dpmods/anime$ValidateKeyTask;

    invoke-static {v0}, Lcom/dpmods/anime$ValidateKeyTask;->access$L1000028(Lcom/dpmods/anime$ValidateKeyTask;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/dpmods/anime$ValidateKeyTask$100000002;->this$0:Lcom/dpmods/anime$ValidateKeyTask;

    invoke-static {v0}, Lcom/dpmods/anime$ValidateKeyTask;->access$L1000028(Lcom/dpmods/anime$ValidateKeyTask;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 666
    iget-object v0, p0, Lcom/dpmods/anime$ValidateKeyTask$100000002;->this$0:Lcom/dpmods/anime$ValidateKeyTask;

    invoke-static {v0}, Lcom/dpmods/anime$ValidateKeyTask;->access$L1000028(Lcom/dpmods/anime$ValidateKeyTask;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    :cond_1d
    goto :goto_22

    :catch_1e
    move-exception v0

    .line 669
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_22
    return-void
.end method
