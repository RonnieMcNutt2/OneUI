.class public Landroid/renderscript/Program;
.super Landroid/renderscript/BaseObj;
.source "Program.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Program$TextureType;,
        Landroid/renderscript/Program$BaseProgramBuilder;,
        Landroid/renderscript/Program$ProgramParam;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final MAX_CONSTANT:I = 0x8

.field static final MAX_INPUT:I = 0x8

.field static final MAX_OUTPUT:I = 0x8

.field static final MAX_TEXTURE:I = 0x8


# instance fields
.field mConstants:[Landroid/renderscript/Type;

.field mInputs:[Landroid/renderscript/Element;

.field mOutputs:[Landroid/renderscript/Element;

.field mShader:Ljava/lang/String;

.field mTextureCount:I

.field mTextureNames:[Ljava/lang/String;

.field mTextures:[Landroid/renderscript/Program$TextureType;


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .registers 6
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 85
    iget-object v0, p0, Landroid/renderscript/Program;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "destroy"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 86
    return-void
.end method


# virtual methods
.method public bindConstants(Landroid/renderscript/Allocation;I)V
    .registers 11
    .param p1, "a"    # Landroid/renderscript/Allocation;
    .param p2, "slot"    # I

    .line 153
    if-ltz p2, :cond_43

    iget-object v0, p0, Landroid/renderscript/Program;->mConstants:[Landroid/renderscript/Type;

    array-length v0, v0

    if-ge p2, v0, :cond_43

    .line 156
    if-eqz p1, :cond_2a

    .line 157
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    iget-object v2, p0, Landroid/renderscript/Program;->mConstants:[Landroid/renderscript/Type;

    aget-object v2, v2, p2

    iget-object v3, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v3}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_22

    goto :goto_2a

    .line 158
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Allocation type does not match slot type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_2a
    :goto_2a
    if-eqz p1, :cond_33

    iget-object v0, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p1, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    goto :goto_35

    :cond_33
    const-wide/16 v0, 0x0

    :goto_35
    move-wide v6, v0

    .line 161
    .local v6, "id":J
    iget-object v2, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    iget-object v0, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/Program;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    move v5, p2

    invoke-virtual/range {v2 .. v7}, Landroid/renderscript/RenderScript;->nProgramBindConstants(JIJ)V

    .line 162
    return-void

    .line 154
    .end local v6    # "id":J
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Slot ID out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bindSampler(Landroid/renderscript/Sampler;I)V
    .registers 11
    .param p1, "vs"    # Landroid/renderscript/Sampler;
    .param p2, "slot"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 198
    if-ltz p2, :cond_24

    iget v0, p0, Landroid/renderscript/Program;->mTextureCount:I

    if-ge p2, v0, :cond_24

    .line 202
    if-eqz p1, :cond_14

    iget-object v0, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p1, v0}, Landroid/renderscript/Sampler;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    goto :goto_16

    :cond_14
    const-wide/16 v0, 0x0

    :goto_16
    move-wide v6, v0

    .line 203
    .local v6, "id":J
    iget-object v2, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    iget-object v0, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/Program;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    move v5, p2

    invoke-virtual/range {v2 .. v7}, Landroid/renderscript/RenderScript;->nProgramBindSampler(JIJ)V

    .line 204
    return-void

    .line 199
    .end local v6    # "id":J
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Slot ID out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bindTexture(Landroid/renderscript/Allocation;I)V
    .registers 11
    .param p1, "va"    # Landroid/renderscript/Allocation;
    .param p2, "slot"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 174
    if-ltz p2, :cond_41

    iget v0, p0, Landroid/renderscript/Program;->mTextureCount:I

    if-ge p2, v0, :cond_41

    .line 177
    if-eqz p1, :cond_28

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Landroid/renderscript/Program;->mTextures:[Landroid/renderscript/Program$TextureType;

    aget-object v0, v0, p2

    sget-object v1, Landroid/renderscript/Program$TextureType;->TEXTURE_CUBE:Landroid/renderscript/Program$TextureType;

    if-ne v0, v1, :cond_20

    goto :goto_28

    .line 179
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot bind cubemap to 2d texture slot"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_28
    :goto_28
    if-eqz p1, :cond_31

    iget-object v0, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p1, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    goto :goto_33

    :cond_31
    const-wide/16 v0, 0x0

    :goto_33
    move-wide v6, v0

    .line 183
    .local v6, "id":J
    iget-object v2, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    iget-object v0, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/Program;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    move v5, p2

    invoke-virtual/range {v2 .. v7}, Landroid/renderscript/RenderScript;->nProgramBindTexture(JIJ)V

    .line 184
    return-void

    .line 175
    .end local v6    # "id":J
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Slot ID out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getConstant(I)Landroid/renderscript/Type;
    .registers 4
    .param p1, "slot"    # I

    .line 105
    if-ltz p1, :cond_a

    iget-object v0, p0, Landroid/renderscript/Program;->mConstants:[Landroid/renderscript/Type;

    array-length v1, v0

    if-ge p1, v1, :cond_a

    .line 108
    aget-object v0, v0, p1

    return-object v0

    .line 106
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Slot ID out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getConstantCount()I
    .registers 2

    .line 94
    iget-object v0, p0, Landroid/renderscript/Program;->mConstants:[Landroid/renderscript/Type;

    if-eqz v0, :cond_6

    array-length v0, v0

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public getTextureCount()I
    .registers 2

    .line 116
    iget v0, p0, Landroid/renderscript/Program;->mTextureCount:I

    return v0
.end method

.method public getTextureName(I)Ljava/lang/String;
    .registers 4
    .param p1, "slot"    # I

    .line 138
    if-ltz p1, :cond_b

    iget v0, p0, Landroid/renderscript/Program;->mTextureCount:I

    if-ge p1, v0, :cond_b

    .line 141
    iget-object v0, p0, Landroid/renderscript/Program;->mTextureNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 139
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Slot ID out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTextureType(I)Landroid/renderscript/Program$TextureType;
    .registers 4
    .param p1, "slot"    # I

    .line 125
    if-ltz p1, :cond_b

    iget v0, p0, Landroid/renderscript/Program;->mTextureCount:I

    if-ge p1, v0, :cond_b

    .line 128
    iget-object v0, p0, Landroid/renderscript/Program;->mTextures:[Landroid/renderscript/Program$TextureType;

    aget-object v0, v0, p1

    return-object v0

    .line 126
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Slot ID out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
