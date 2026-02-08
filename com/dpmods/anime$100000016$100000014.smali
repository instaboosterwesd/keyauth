.class Lcom/dpmods/anime$100000016$100000014;
.super Ljava/lang/Object;
.source "anime.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime$100000016;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000014"
.end annotation


# instance fields
.field private final this$0:Lcom/dpmods/anime$100000016;


# direct methods
.method constructor <init>(Lcom/dpmods/anime$100000016;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$100000016$100000014;->this$0:Lcom/dpmods/anime$100000016;

    return-void
.end method

.method static access$0(Lcom/dpmods/anime$100000016$100000014;)Lcom/dpmods/anime$100000016;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$100000016$100000014;->this$0:Lcom/dpmods/anime$100000016;

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

    .line 746
    iget-object v0, p0, Lcom/dpmods/anime$100000016$100000014;->this$0:Lcom/dpmods/anime$100000016;

    invoke-static {v0}, Lcom/dpmods/anime$100000016;->access$0(Lcom/dpmods/anime$100000016;)Lcom/dpmods/anime;

    move-result-object v0

    invoke-static {v0}, Lcom/dpmods/anime;->access$L1000000(Lcom/dpmods/anime;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Key Expired! App closing."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 747
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method
