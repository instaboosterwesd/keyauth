.class Lcom/dpmods/anime$100000016$100000013;
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
    name = "100000013"
.end annotation


# instance fields
.field private final this$0:Lcom/dpmods/anime$100000016;

.field private final synthetic val$errorMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dpmods/anime$100000016;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$100000016$100000013;->this$0:Lcom/dpmods/anime$100000016;

    iput-object p2, p0, Lcom/dpmods/anime$100000016$100000013;->val$errorMsg:Ljava/lang/String;

    return-void
.end method

.method static access$0(Lcom/dpmods/anime$100000016$100000013;)Lcom/dpmods/anime$100000016;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$100000016$100000013;->this$0:Lcom/dpmods/anime$100000016;

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

    .line 733
    iget-object v0, p0, Lcom/dpmods/anime$100000016$100000013;->this$0:Lcom/dpmods/anime$100000016;

    invoke-static {v0}, Lcom/dpmods/anime$100000016;->access$0(Lcom/dpmods/anime$100000016;)Lcom/dpmods/anime;

    move-result-object v0

    invoke-static {v0}, Lcom/dpmods/anime;->access$L1000000(Lcom/dpmods/anime;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/dpmods/anime$100000016$100000013;->val$errorMsg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 734
    iget-object v0, p0, Lcom/dpmods/anime$100000016$100000013;->this$0:Lcom/dpmods/anime$100000016;

    invoke-static {v0}, Lcom/dpmods/anime$100000016;->access$0(Lcom/dpmods/anime$100000016;)Lcom/dpmods/anime;

    move-result-object v0

    invoke-static {v0}, Lcom/dpmods/anime;->access$1000077(Lcom/dpmods/anime;)V

    return-void
.end method
