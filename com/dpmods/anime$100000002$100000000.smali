.class Lcom/dpmods/anime$100000002$100000000;
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
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/dpmods/anime$100000002;

.field private final synthetic val$jsonStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dpmods/anime$100000002;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$100000002$100000000;->this$0:Lcom/dpmods/anime$100000002;

    iput-object p2, p0, Lcom/dpmods/anime$100000002$100000000;->val$jsonStr:Ljava/lang/String;

    return-void
.end method

.method static access$0(Lcom/dpmods/anime$100000002$100000000;)Lcom/dpmods/anime$100000002;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$100000002$100000000;->this$0:Lcom/dpmods/anime$100000002;

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

    .line 201
    iget-object v0, p0, Lcom/dpmods/anime$100000002$100000000;->this$0:Lcom/dpmods/anime$100000002;

    invoke-static {v0}, Lcom/dpmods/anime$100000002;->access$0(Lcom/dpmods/anime$100000002;)Lcom/dpmods/anime;

    move-result-object v0

    iget-object v1, p0, Lcom/dpmods/anime$100000002$100000000;->val$jsonStr:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/dpmods/anime;->access$1000051(Lcom/dpmods/anime;Ljava/lang/String;)V

    return-void
.end method
