.class Landroid/widget/AbsSeekBar$SliderDrawable$SliderState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "AbsSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsSeekBar$SliderDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SliderState"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/AbsSeekBar$SliderDrawable;


# direct methods
.method private constructor <init>(Landroid/widget/AbsSeekBar$SliderDrawable;)V
    .registers 2

    .line 2357
    iput-object p1, p0, Landroid/widget/AbsSeekBar$SliderDrawable$SliderState;->this$1:Landroid/widget/AbsSeekBar$SliderDrawable;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsSeekBar$SliderDrawable;Landroid/widget/AbsSeekBar$SliderDrawable$SliderState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar$SliderDrawable$SliderState;-><init>(Landroid/widget/AbsSeekBar$SliderDrawable;)V

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .registers 2

    .line 2366
    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 2361
    iget-object v0, p0, Landroid/widget/AbsSeekBar$SliderDrawable$SliderState;->this$1:Landroid/widget/AbsSeekBar$SliderDrawable;

    return-object v0
.end method
