.class public Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;
.super Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;
.source "CPCommand.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0}, Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;-><init>()V

    .line 27
    const/16 v0, 0xa2

    :try_start_5
    iput v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    .line 28
    invoke-virtual {p0}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->addATCommands()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    .line 31
    goto :goto_f

    .line 29
    :catch_b
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 32
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_f
    return-void
.end method


# virtual methods
.method protected addATCommands()V
    .registers 1

    .line 36
    return-void
.end method
