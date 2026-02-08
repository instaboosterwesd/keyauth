.class Lcom/dpmods/anime$100000022;
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
    name = "100000022"
.end annotation


# instance fields
.field private final this$0:Lcom/dpmods/anime;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dpmods/anime;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$100000022;->this$0:Lcom/dpmods/anime;

    iput-object p2, p0, Lcom/dpmods/anime$100000022;->val$url:Ljava/lang/String;

    return-void
.end method

.method static access$0(Lcom/dpmods/anime$100000022;)Lcom/dpmods/anime;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$100000022;->this$0:Lcom/dpmods/anime;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 632
    iget-object v0, p0, Lcom/dpmods/anime$100000022;->this$0:Lcom/dpmods/anime;

    invoke-static {v0, p1}, Lcom/dpmods/anime;->access$1000085(Lcom/dpmods/anime;Landroid/view/View;)V

    iget-object p1, p0, Lcom/dpmods/anime$100000022;->this$0:Lcom/dpmods/anime;

    iget-object v0, p0, Lcom/dpmods/anime$100000022;->val$url:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/dpmods/anime;->access$1000109(Lcom/dpmods/anime;Ljava/lang/String;)V

    return-void
.end method
