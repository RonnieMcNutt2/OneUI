.class Landroid/widget/Chronometer$CirCleProgressDrawable$ProgressState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "Chronometer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Chronometer$CirCleProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressState"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Chronometer$CirCleProgressDrawable;


# direct methods
.method private constructor <init>(Landroid/widget/Chronometer$CirCleProgressDrawable;)V
    .registers 2

    .line 1053
    iput-object p1, p0, Landroid/widget/Chronometer$CirCleProgressDrawable$ProgressState;->this$1:Landroid/widget/Chronometer$CirCleProgressDrawable;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Chronometer$CirCleProgressDrawable;Landroid/widget/Chronometer$CirCleProgressDrawable$ProgressState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/Chronometer$CirCleProgressDrawable$ProgressState;-><init>(Landroid/widget/Chronometer$CirCleProgressDrawable;)V

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .registers 2

    .line 1062
    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1057
    iget-object v0, p0, Landroid/widget/Chronometer$CirCleProgressDrawable$ProgressState;->this$1:Landroid/widget/Chronometer$CirCleProgressDrawable;

    return-object v0
.end method
