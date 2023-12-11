.class public Lcom/samsung/app/video/editor/external/DoodleCommandInfo;
.super Ljava/lang/Object;
.source "DoodleCommandInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field doodleCommand:I

.field mCommand:Lcom/samsung/app/video/editor/external/DoodleCommand;

.field mDuration:I

.field mIndex:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setCommand(Lcom/samsung/app/video/editor/external/DoodleCommand;)V
    .registers 3
    .param p1, "command"    # Lcom/samsung/app/video/editor/external/DoodleCommand;

    .line 12
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/DoodleCommandInfo;->mCommand:Lcom/samsung/app/video/editor/external/DoodleCommand;

    .line 13
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/DoodleCommand;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/DoodleCommandInfo;->doodleCommand:I

    .line 14
    return-void
.end method

.method public setIndex(I)V
    .registers 2
    .param p1, "index"    # I

    .line 17
    iput p1, p0, Lcom/samsung/app/video/editor/external/DoodleCommandInfo;->mIndex:I

    .line 18
    return-void
.end method
