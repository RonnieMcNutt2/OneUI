.class Landroid/widget/Chronometer$CirCleProgressDrawable$1;
.super Landroid/util/IntProperty;
.source "Chronometer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Chronometer$CirCleProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/IntProperty<",
        "Landroid/widget/Chronometer$CirCleProgressDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Chronometer$CirCleProgressDrawable;


# direct methods
.method constructor <init>(Landroid/widget/Chronometer$CirCleProgressDrawable;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$1"    # Landroid/widget/Chronometer$CirCleProgressDrawable;
    .param p2, "name"    # Ljava/lang/String;

    .line 959
    iput-object p1, p0, Landroid/widget/Chronometer$CirCleProgressDrawable$1;->this$1:Landroid/widget/Chronometer$CirCleProgressDrawable;

    invoke-direct {p0, p2}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/widget/Chronometer$CirCleProgressDrawable;)Ljava/lang/Integer;
    .registers 3
    .param p1, "object"    # Landroid/widget/Chronometer$CirCleProgressDrawable;

    .line 968
    iget v0, p1, Landroid/widget/Chronometer$CirCleProgressDrawable;->mProgress:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 959
    check-cast p1, Landroid/widget/Chronometer$CirCleProgressDrawable;

    invoke-virtual {p0, p1}, Landroid/widget/Chronometer$CirCleProgressDrawable$1;->get(Landroid/widget/Chronometer$CirCleProgressDrawable;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Landroid/widget/Chronometer$CirCleProgressDrawable;I)V
    .registers 4
    .param p1, "object"    # Landroid/widget/Chronometer$CirCleProgressDrawable;
    .param p2, "value"    # I

    .line 962
    iput p2, p1, Landroid/widget/Chronometer$CirCleProgressDrawable;->mProgress:I

    .line 963
    iget-object v0, p0, Landroid/widget/Chronometer$CirCleProgressDrawable$1;->this$1:Landroid/widget/Chronometer$CirCleProgressDrawable;

    invoke-virtual {v0}, Landroid/widget/Chronometer$CirCleProgressDrawable;->invalidateSelf()V

    .line 964
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .registers 3

    .line 959
    check-cast p1, Landroid/widget/Chronometer$CirCleProgressDrawable;

    invoke-virtual {p0, p1, p2}, Landroid/widget/Chronometer$CirCleProgressDrawable$1;->setValue(Landroid/widget/Chronometer$CirCleProgressDrawable;I)V

    return-void
.end method
