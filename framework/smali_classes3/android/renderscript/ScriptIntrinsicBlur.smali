.class public final Landroid/renderscript/ScriptIntrinsicBlur;
.super Landroid/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicBlur.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mInput:Landroid/renderscript/Allocation;

.field private mScenario:Lcom/samsung/epic/Request;

.field private final mValues:[F


# direct methods
.method private constructor <init>(JLandroid/renderscript/RenderScript;)V
    .registers 5
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsic;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 34
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/ScriptIntrinsicBlur;->mValues:[F

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/renderscript/ScriptIntrinsicBlur;->mScenario:Lcom/samsung/epic/Request;

    .line 40
    return-void
.end method

.method public static create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;
    .registers 6
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;

    .line 55
    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {p0}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_1d

    .line 56
    :cond_15
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Unsupported element type."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_1d
    :goto_1d
    const/4 v0, 0x5

    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/renderscript/RenderScript;->nScriptIntrinsicCreate(IJ)J

    move-result-wide v0

    .line 59
    .local v0, "id":J
    new-instance v2, Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-direct {v2, v0, v1, p0}, Landroid/renderscript/ScriptIntrinsicBlur;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 60
    .local v2, "sib":Landroid/renderscript/ScriptIntrinsicBlur;
    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {v2, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 69
    return-object v2
.end method


# virtual methods
.method public forEach(Landroid/renderscript/Allocation;)V
    .registers 4
    .param p1, "aout"    # Landroid/renderscript/Allocation;

    .line 112
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    if-eqz v0, :cond_13

    .line 115
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/renderscript/Allocation;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V

    .line 116
    return-void

    .line 113
    :cond_13
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Output is a 1D Allocation"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 10
    .param p1, "aout"    # Landroid/renderscript/Allocation;
    .param p2, "opt"    # Landroid/renderscript/Script$LaunchOptions;

    .line 127
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    if-eqz v0, :cond_17

    .line 130
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v3

    check-cast v0, Landroid/renderscript/Allocation;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    .line 131
    return-void

    .line 128
    :cond_17
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Output is a 1D Allocation"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFieldID_Input()Landroid/renderscript/Script$FieldID;
    .registers 3

    .line 149
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID()Landroid/renderscript/Script$KernelID;
    .registers 4

    .line 140
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public setInput(Landroid/renderscript/Allocation;)V
    .registers 5
    .param p1, "ain"    # Landroid/renderscript/Allocation;

    .line 79
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    if-eqz v0, :cond_36

    .line 82
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    .line 83
    .local v0, "e":Landroid/renderscript/Element;
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicBlur;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_2f

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicBlur;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-eqz v1, :cond_27

    goto :goto_2f

    .line 84
    :cond_27
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Unsupported element type."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_2f
    :goto_2f
    iput-object p1, p0, Landroid/renderscript/ScriptIntrinsicBlur;->mInput:Landroid/renderscript/Allocation;

    .line 87
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 88
    return-void

    .line 80
    .end local v0    # "e":Landroid/renderscript/Element;
    :cond_36
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Input set to a 1D Allocation"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRadius(F)V
    .registers 4
    .param p1, "radius"    # F

    .line 98
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_10

    const/high16 v0, 0x41c80000    # 25.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_10

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setVar(IF)V

    .line 102
    return-void

    .line 99
    :cond_10
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Radius out of range (0 < r <= 25)."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
