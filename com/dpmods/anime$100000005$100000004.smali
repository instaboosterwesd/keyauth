.class Lcom/dpmods/anime$100000005$100000004;
.super Landroid/animation/AnimatorListenerAdapter;
.source "anime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime$100000005;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000004"
.end annotation


# instance fields
.field private final this$0:Lcom/dpmods/anime$100000005;

.field private final synthetic val$infoText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/dpmods/anime$100000005;Landroid/widget/TextView;)V
    .registers 3

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$100000005$100000004;->this$0:Lcom/dpmods/anime$100000005;

    iput-object p2, p0, Lcom/dpmods/anime$100000005$100000004;->val$infoText:Landroid/widget/TextView;

    return-void
.end method

.method static access$0(Lcom/dpmods/anime$100000005$100000004;)Lcom/dpmods/anime$100000005;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$100000005$100000004;->this$0:Lcom/dpmods/anime$100000005;

    return-object p0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 394
    iget-object p1, p0, Lcom/dpmods/anime$100000005$100000004;->val$infoText:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
