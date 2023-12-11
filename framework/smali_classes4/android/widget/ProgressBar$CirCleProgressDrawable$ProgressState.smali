.class Landroid/widget/ProgressBar$CirCleProgressDrawable$ProgressState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "ProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ProgressBar$CirCleProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressState"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/ProgressBar$CirCleProgressDrawable;


# direct methods
.method private constructor <init>(Landroid/widget/ProgressBar$CirCleProgressDrawable;)V
    .registers 2

    .line 2999
    iput-object p1, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable$ProgressState;->this$1:Landroid/widget/ProgressBar$CirCleProgressDrawable;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ProgressBar$CirCleProgressDrawable;Landroid/widget/ProgressBar$CirCleProgressDrawable$ProgressState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/ProgressBar$CirCleProgressDrawable$ProgressState;-><init>(Landroid/widget/ProgressBar$CirCleProgressDrawable;)V

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .registers 2

    .line 3008
    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 3003
    iget-object v0, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable$ProgressState;->this$1:Landroid/widget/ProgressBar$CirCleProgressDrawable;

    return-object v0
.end method
