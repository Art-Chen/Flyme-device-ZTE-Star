.class Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayColor$ColorSeekBar;
.super Ljava/lang/Object;
.source "DisplayColor.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorSeekBar"
.end annotation


# instance fields
.field private mIndex:I

.field private final mSeekBar:Lcom/flyme/DeviceOriginalSettings/IntervalSeekBar;

.field private mValue:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayColor;


# direct methods
.method public constructor <init>(Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayColor;Lcom/flyme/DeviceOriginalSettings/IntervalSeekBar;Landroid/widget/TextView;I)V
    .locals 1
    .param p2, "seekBar"    # Lcom/flyme/DeviceOriginalSettings/IntervalSeekBar;
    .param p3, "value"    # Landroid/widget/TextView;
    .param p4, "index"    # I

    .prologue
    .line 224
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayColor$ColorSeekBar;->this$0:Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p2, p0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayColor$ColorSeekBar;->mSeekBar:Lcom/flyme/DeviceOriginalSettings/IntervalSeekBar;

    .line 226
    iput-object p3, p0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayColor$ColorSeekBar;->mValue:Landroid/widget/TextView;

    .line 227
    iput p4, p0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayColor$ColorSeekBar;->mIndex:I

    .line 229
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayColor$ColorSeekBar;->mSeekBar:Lcom/flyme/DeviceOriginalSettings/IntervalSeekBar;

    invoke-virtual {v0, p0}, Lcom/flyme/DeviceOriginalSettings/IntervalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 230
    return-void
.end method

.method static synthetic access$000(Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayColor$ColorSeekBar;)Lcom/flyme/DeviceOriginalSettings/IntervalSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayColor$ColorSeekBar;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayColor$ColorSeekBar;->mSeekBar:Lcom/flyme/DeviceOriginalSettings/IntervalSeekBar;

    return-object v0
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 234
    move-object v1, p1

    check-cast v1, Lcom/flyme/DeviceOriginalSettings/IntervalSeekBar;

    .line 235
    .local v1, "isb":Lcom/flyme/DeviceOriginalSettings/IntervalSeekBar;
    invoke-virtual {v1}, Lcom/flyme/DeviceOriginalSettings/IntervalSeekBar;->getProgressFloat()F

    move-result v0

    .line 236
    .local v0, "fp":F
    if-eqz p3, :cond_0

    .line 237
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayColor$ColorSeekBar;->this$0:Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayColor;

    # getter for: Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayColor;->mCurrentColors:[F
    invoke-static {v3}, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayColor;->access$200(Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayColor;)[F

    move-result-object v3

    iget v4, p0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayColor$ColorSeekBar;->mIndex:I

    aput v0, v3, v4

    .line 238
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayColor$ColorSeekBar;->this$0:Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayColor;

    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayColor$ColorSeekBar;->this$0:Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayColor;

    # getter for: Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayColor;->mCurrentColors:[F
    invoke-static {v4}, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayColor;->access$200(Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayColor;)[F

    move-result-object v4

    # invokes: Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayColor;->updateColors([F)V
    invoke-static {v3, v4}, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayColor;->access$300(Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayColor;[F)V

    .line 241
    :cond_0
    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 242
    .local v2, "percent":I
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/livedisplay/DisplayColor$ColorSeekBar;->mValue:Landroid/widget/TextView;

    const-string v4, "%d%%"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 248
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 253
    return-void
.end method
