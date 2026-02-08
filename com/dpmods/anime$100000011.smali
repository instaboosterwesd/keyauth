.class Lcom/dpmods/anime$100000011;
.super Ljava/lang/Object;
.source "anime.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000011"
.end annotation


# instance fields
.field private final this$0:Lcom/dpmods/anime;


# direct methods
.method constructor <init>(Lcom/dpmods/anime;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$100000011;->this$0:Lcom/dpmods/anime;

    return-void
.end method

.method static access$0(Lcom/dpmods/anime$100000011;)Lcom/dpmods/anime;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$100000011;->this$0:Lcom/dpmods/anime;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 547
    iget-object p1, p0, Lcom/dpmods/anime$100000011;->this$0:Lcom/dpmods/anime;

    invoke-static {p1}, Lcom/dpmods/anime;->access$1000062(Lcom/dpmods/anime;)V

    return-void
.end method
