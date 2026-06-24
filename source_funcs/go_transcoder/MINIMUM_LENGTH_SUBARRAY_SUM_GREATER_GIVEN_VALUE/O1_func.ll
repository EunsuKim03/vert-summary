define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %x) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3125)
    #dbg_value(i64 %arr.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3125)
    #dbg_value(i64 %arr.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3125)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3125)
    #dbg_value(i64 %x, !3120, !DIExpression(), !3125)
    #dbg_value(i64 0, !3121, !DIExpression(), !3126)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3127)
    #dbg_value(ptr undef, !3128, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !3132)
    #dbg_value(ptr undef, !3128, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !3132)
    #dbg_value(ptr undef, !3128, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !3132)
    #dbg_value(ptr undef, !3128, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !3132)
    #dbg_value(ptr undef, !3128, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !3132)
    #dbg_value(ptr undef, !3128, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !3132)
    #dbg_value(ptr undef, !3128, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !3132)
    #dbg_value(ptr undef, !3128, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !3132)
    #dbg_value(ptr undef, !3134, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !3138)
    #dbg_value(ptr undef, !3134, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !3138)
    #dbg_value(ptr undef, !3134, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !3138)
    #dbg_value(ptr undef, !3134, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !3138)
    #dbg_value(ptr undef, !3134, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !3138)
    #dbg_value(ptr undef, !3134, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !3138)
    #dbg_value(ptr undef, !3134, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !3138)
    #dbg_value(ptr undef, !3134, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !3138)
  %0 = add i64 %n, 1, !dbg !3140
    #dbg_value(i64 %0, !3122, !DIExpression(), !3141)
    #dbg_value(i64 0, !3123, !DIExpression(), !3142)
    #dbg_value(i64 0, !3124, !DIExpression(), !3143)
  br label %for.loop, !dbg !3144

for.loop:                                         ; preds = %for.loop2, %entry
  %stackalloc8.sroa.11.0 = phi i8 [ 0, %entry ], [ %stackalloc8.sroa.11.1, %for.loop2 ], !dbg !3142
  %stackalloc8.sroa.10.0 = phi i8 [ 0, %entry ], [ %stackalloc8.sroa.10.1, %for.loop2 ], !dbg !3142
  %stackalloc8.sroa.9.0 = phi i8 [ 0, %entry ], [ %stackalloc8.sroa.9.1, %for.loop2 ], !dbg !3142
  %stackalloc8.sroa.8.0 = phi i8 [ 0, %entry ], [ %stackalloc8.sroa.8.1, %for.loop2 ], !dbg !3142
  %stackalloc8.sroa.7.0 = phi i8 [ 0, %entry ], [ %stackalloc8.sroa.7.1, %for.loop2 ], !dbg !3142
  %stackalloc8.sroa.6.0 = phi i8 [ 0, %entry ], [ %stackalloc8.sroa.6.1, %for.loop2 ], !dbg !3142
  %stackalloc8.sroa.5.0 = phi i8 [ 0, %entry ], [ %stackalloc8.sroa.5.1, %for.loop2 ], !dbg !3142
  %stackalloc8.sroa.0.0 = phi i8 [ 0, %entry ], [ %stackalloc8.sroa.0.1, %for.loop2 ], !dbg !3142
  %stackalloc.sroa.13.0 = phi i8 [ 0, %entry ], [ %stackalloc.sroa.13.1, %for.loop2 ], !dbg !3143
  %stackalloc.sroa.12.0 = phi i8 [ 0, %entry ], [ %stackalloc.sroa.12.1, %for.loop2 ], !dbg !3143
  %stackalloc.sroa.11.0 = phi i8 [ 0, %entry ], [ %stackalloc.sroa.11.1, %for.loop2 ], !dbg !3143
  %stackalloc.sroa.10.0 = phi i8 [ 0, %entry ], [ %stackalloc.sroa.10.1, %for.loop2 ], !dbg !3143
  %stackalloc.sroa.9.0 = phi i8 [ 0, %entry ], [ %stackalloc.sroa.9.1, %for.loop2 ], !dbg !3143
  %stackalloc.sroa.8.0 = phi i8 [ 0, %entry ], [ %stackalloc.sroa.8.1, %for.loop2 ], !dbg !3143
  %stackalloc.sroa.7.0 = phi i8 [ 0, %entry ], [ %stackalloc.sroa.7.1, %for.loop2 ], !dbg !3143
  %stackalloc.sroa.0.0 = phi i8 [ 0, %entry ], [ %stackalloc.sroa.0.1, %for.loop2 ], !dbg !3143
  %1 = phi i64 [ 0, %entry ], [ %10, %for.loop2 ], !dbg !3126
  %2 = phi i64 [ %0, %entry ], [ %11, %for.loop2 ], !dbg !3141
  %stackalloc.sroa.13.0.insert.ext138 = zext i8 %stackalloc.sroa.13.0 to i64, !dbg !3145
  %stackalloc.sroa.13.0.insert.shift139 = shl nuw i64 %stackalloc.sroa.13.0.insert.ext138, 56, !dbg !3145
  %stackalloc.sroa.12.0.insert.ext123 = zext i8 %stackalloc.sroa.12.0 to i64, !dbg !3145
  %stackalloc.sroa.12.0.insert.shift124 = shl nuw nsw i64 %stackalloc.sroa.12.0.insert.ext123, 48, !dbg !3145
  %stackalloc.sroa.12.0.insert.insert126 = or disjoint i64 %stackalloc.sroa.12.0.insert.shift124, %stackalloc.sroa.13.0.insert.shift139, !dbg !3145
  %stackalloc.sroa.11.0.insert.ext108 = zext i8 %stackalloc.sroa.11.0 to i64, !dbg !3145
  %stackalloc.sroa.11.0.insert.shift109 = shl nuw nsw i64 %stackalloc.sroa.11.0.insert.ext108, 40, !dbg !3145
  %stackalloc.sroa.11.0.insert.insert111 = or disjoint i64 %stackalloc.sroa.12.0.insert.insert126, %stackalloc.sroa.11.0.insert.shift109, !dbg !3145
  %stackalloc.sroa.10.0.insert.ext93 = zext i8 %stackalloc.sroa.10.0 to i64, !dbg !3145
  %stackalloc.sroa.10.0.insert.shift94 = shl nuw nsw i64 %stackalloc.sroa.10.0.insert.ext93, 32, !dbg !3145
  %stackalloc.sroa.10.0.insert.insert96 = or disjoint i64 %stackalloc.sroa.11.0.insert.insert111, %stackalloc.sroa.10.0.insert.shift94, !dbg !3145
  %stackalloc.sroa.9.0.insert.ext78 = zext i8 %stackalloc.sroa.9.0 to i64, !dbg !3145
  %stackalloc.sroa.9.0.insert.shift79 = shl nuw nsw i64 %stackalloc.sroa.9.0.insert.ext78, 24, !dbg !3145
  %stackalloc.sroa.9.0.insert.insert81 = or disjoint i64 %stackalloc.sroa.10.0.insert.insert96, %stackalloc.sroa.9.0.insert.shift79, !dbg !3145
  %stackalloc.sroa.8.0.insert.ext63 = zext i8 %stackalloc.sroa.8.0 to i64, !dbg !3145
  %stackalloc.sroa.8.0.insert.shift64 = shl nuw nsw i64 %stackalloc.sroa.8.0.insert.ext63, 16, !dbg !3145
  %stackalloc.sroa.7.0.insert.ext48 = zext i8 %stackalloc.sroa.7.0 to i64, !dbg !3145
  %stackalloc.sroa.7.0.insert.shift49 = shl nuw nsw i64 %stackalloc.sroa.7.0.insert.ext48, 8, !dbg !3145
  %stackalloc.sroa.7.0.insert.mask50 = or disjoint i64 %stackalloc.sroa.9.0.insert.insert81, %stackalloc.sroa.8.0.insert.shift64, !dbg !3145
  %stackalloc.sroa.0.0.insert.ext36 = zext i8 %stackalloc.sroa.0.0 to i64, !dbg !3145
  %stackalloc.sroa.0.0.insert.mask37 = or disjoint i64 %stackalloc.sroa.7.0.insert.mask50, %stackalloc.sroa.7.0.insert.shift49, !dbg !3145
  %stackalloc.sroa.0.0.insert.insert38 = or i64 %stackalloc.sroa.0.0.insert.mask37, %stackalloc.sroa.0.0.insert.ext36, !dbg !3145
    #dbg_value(i64 %stackalloc.sroa.0.0.insert.insert38, !3124, !DIExpression(), !3146)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3147)
  %3 = icmp slt i64 %stackalloc.sroa.0.0.insert.insert38, %n, !dbg !3145
  br i1 %3, label %for.loop1, label %for.done, !dbg !3144

for.loop1:                                        ; preds = %for.loop, %lookup.next
  %stackalloc.sroa.13.1 = phi i8 [ %stackalloc.sroa.13.0.extract.trunc, %lookup.next ], [ %stackalloc.sroa.13.0, %for.loop ], !dbg !3144
  %stackalloc.sroa.12.1 = phi i8 [ %stackalloc.sroa.12.0.extract.trunc, %lookup.next ], [ %stackalloc.sroa.12.0, %for.loop ], !dbg !3144
  %stackalloc.sroa.11.1 = phi i8 [ %stackalloc.sroa.11.0.extract.trunc, %lookup.next ], [ %stackalloc.sroa.11.0, %for.loop ], !dbg !3144
  %stackalloc.sroa.10.1 = phi i8 [ %stackalloc.sroa.10.0.extract.trunc, %lookup.next ], [ %stackalloc.sroa.10.0, %for.loop ], !dbg !3144
  %stackalloc.sroa.9.1 = phi i8 [ %stackalloc.sroa.9.0.extract.trunc, %lookup.next ], [ %stackalloc.sroa.9.0, %for.loop ], !dbg !3144
  %stackalloc.sroa.8.1 = phi i8 [ %stackalloc.sroa.8.0.extract.trunc, %lookup.next ], [ %stackalloc.sroa.8.0, %for.loop ], !dbg !3144
  %stackalloc.sroa.7.1 = phi i8 [ %stackalloc.sroa.7.0.extract.trunc, %lookup.next ], [ %stackalloc.sroa.7.0, %for.loop ], !dbg !3144
  %stackalloc.sroa.0.1 = phi i8 [ %stackalloc.sroa.0.0.extract.trunc, %lookup.next ], [ %stackalloc.sroa.0.0, %for.loop ], !dbg !3144
  %4 = phi i64 [ %9, %lookup.next ], [ %1, %for.loop ], !dbg !3126
    #dbg_value(i64 %4, !3121, !DIExpression(), !3148)
    #dbg_value(i64 %x, !3120, !DIExpression(), !3149)
  %.not = icmp sle i64 %4, %x, !dbg !3150
  %stackalloc.sroa.13.0.insert.ext143 = zext i8 %stackalloc.sroa.13.1 to i64
  %stackalloc.sroa.13.0.insert.shift144 = shl nuw i64 %stackalloc.sroa.13.0.insert.ext143, 56
  %stackalloc.sroa.12.0.insert.ext128 = zext i8 %stackalloc.sroa.12.1 to i64
  %stackalloc.sroa.12.0.insert.shift129 = shl nuw nsw i64 %stackalloc.sroa.12.0.insert.ext128, 48
  %stackalloc.sroa.12.0.insert.insert131 = or disjoint i64 %stackalloc.sroa.12.0.insert.shift129, %stackalloc.sroa.13.0.insert.shift144
  %stackalloc.sroa.11.0.insert.ext113 = zext i8 %stackalloc.sroa.11.1 to i64
  %stackalloc.sroa.11.0.insert.shift114 = shl nuw nsw i64 %stackalloc.sroa.11.0.insert.ext113, 40
  %stackalloc.sroa.11.0.insert.insert116 = or disjoint i64 %stackalloc.sroa.12.0.insert.insert131, %stackalloc.sroa.11.0.insert.shift114
  %stackalloc.sroa.10.0.insert.ext98 = zext i8 %stackalloc.sroa.10.1 to i64
  %stackalloc.sroa.10.0.insert.shift99 = shl nuw nsw i64 %stackalloc.sroa.10.0.insert.ext98, 32
  %stackalloc.sroa.10.0.insert.insert101 = or disjoint i64 %stackalloc.sroa.11.0.insert.insert116, %stackalloc.sroa.10.0.insert.shift99
  %stackalloc.sroa.9.0.insert.ext83 = zext i8 %stackalloc.sroa.9.1 to i64
  %stackalloc.sroa.9.0.insert.shift84 = shl nuw nsw i64 %stackalloc.sroa.9.0.insert.ext83, 24
  %stackalloc.sroa.9.0.insert.insert86 = or disjoint i64 %stackalloc.sroa.10.0.insert.insert101, %stackalloc.sroa.9.0.insert.shift84
  %stackalloc.sroa.8.0.insert.ext68 = zext i8 %stackalloc.sroa.8.1 to i64
  %stackalloc.sroa.8.0.insert.shift69 = shl nuw nsw i64 %stackalloc.sroa.8.0.insert.ext68, 16
  %stackalloc.sroa.7.0.insert.ext53 = zext i8 %stackalloc.sroa.7.1 to i64
  %stackalloc.sroa.7.0.insert.shift54 = shl nuw nsw i64 %stackalloc.sroa.7.0.insert.ext53, 8
  %stackalloc.sroa.7.0.insert.mask55 = or disjoint i64 %stackalloc.sroa.9.0.insert.insert86, %stackalloc.sroa.8.0.insert.shift69
  %stackalloc.sroa.0.0.insert.ext40 = zext i8 %stackalloc.sroa.0.1 to i64
  %stackalloc.sroa.0.0.insert.mask41 = or disjoint i64 %stackalloc.sroa.7.0.insert.mask55, %stackalloc.sroa.7.0.insert.shift54
  %stackalloc.sroa.0.0.insert.insert42 = or i64 %stackalloc.sroa.0.0.insert.mask41, %stackalloc.sroa.0.0.insert.ext40
    #dbg_value(i64 %stackalloc.sroa.0.0.insert.insert42, !3124, !DIExpression(), !3151)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3152)
  %5 = icmp slt i64 %stackalloc.sroa.0.0.insert.insert42, %n
  %or.cond = select i1 %.not, i1 %5, i1 false, !dbg !3144
  br i1 %or.cond, label %for.body, label %for.loop2, !dbg !3144

for.body:                                         ; preds = %for.loop1
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3153)
    #dbg_value(ptr undef, !3134, !DIExpression(), !3138)
    #dbg_value(ptr undef, !3134, !DIExpression(), !3154)
    #dbg_value(i64 %stackalloc.sroa.0.0.insert.insert42, !3137, !DIExpression(), !3155)
    #dbg_value(ptr undef, !3134, !DIExpression(), !3156)
    #dbg_value(i64 %stackalloc.sroa.0.0.insert.insert42, !3137, !DIExpression(), !3157)
  %.not7 = icmp ult i64 %stackalloc.sroa.0.0.insert.insert42, %arr.len, !dbg !3158
  br i1 %.not7, label %lookup.next, label %lookup.throw, !dbg !3158

lookup.next:                                      ; preds = %for.body
  %6 = add i64 %stackalloc.sroa.0.0.insert.insert42, 1, !dbg !3159
  %stackalloc.sroa.13.0.extract.shift = lshr i64 %6, 56, !dbg !3159
  %stackalloc.sroa.13.0.extract.trunc = trunc nuw i64 %stackalloc.sroa.13.0.extract.shift to i8, !dbg !3159
  %stackalloc.sroa.12.0.extract.shift = lshr i64 %6, 48, !dbg !3159
  %stackalloc.sroa.12.0.extract.trunc = trunc i64 %stackalloc.sroa.12.0.extract.shift to i8, !dbg !3159
  %stackalloc.sroa.11.0.extract.shift = lshr i64 %6, 40, !dbg !3159
  %stackalloc.sroa.11.0.extract.trunc = trunc i64 %stackalloc.sroa.11.0.extract.shift to i8, !dbg !3159
  %stackalloc.sroa.10.0.extract.shift = lshr i64 %6, 32, !dbg !3159
  %stackalloc.sroa.10.0.extract.trunc = trunc i64 %stackalloc.sroa.10.0.extract.shift to i8, !dbg !3159
  %stackalloc.sroa.9.0.extract.shift = lshr i64 %6, 24, !dbg !3159
  %stackalloc.sroa.9.0.extract.trunc = trunc i64 %stackalloc.sroa.9.0.extract.shift to i8, !dbg !3159
  %stackalloc.sroa.8.0.extract.shift = lshr i64 %6, 16, !dbg !3159
  %stackalloc.sroa.8.0.extract.trunc = trunc i64 %stackalloc.sroa.8.0.extract.shift to i8, !dbg !3159
  %stackalloc.sroa.7.0.extract.shift = lshr i64 %6, 8, !dbg !3159
  %stackalloc.sroa.7.0.extract.trunc = trunc i64 %stackalloc.sroa.7.0.extract.shift to i8, !dbg !3159
  %stackalloc.sroa.0.0.extract.trunc = trunc i64 %6 to i8, !dbg !3159
  %7 = getelementptr inbounds i64, ptr %arr.data, i64 %stackalloc.sroa.0.0.insert.insert42, !dbg !3158
  %8 = load i64, ptr %7, align 8, !dbg !3158
  %9 = add i64 %8, %4, !dbg !3160
    #dbg_value(i64 %9, !3121, !DIExpression(), !3160)
  br label %for.loop1, !dbg !3144

for.loop2:                                        ; preds = %for.loop1, %lookup.next8
  %stackalloc8.sroa.11.1 = phi i8 [ %stackalloc8.sroa.11.0.extract.trunc, %lookup.next8 ], [ %stackalloc8.sroa.11.0, %for.loop1 ], !dbg !3144
  %stackalloc8.sroa.10.1 = phi i8 [ %stackalloc8.sroa.10.0.extract.trunc, %lookup.next8 ], [ %stackalloc8.sroa.10.0, %for.loop1 ], !dbg !3144
  %stackalloc8.sroa.9.1 = phi i8 [ %stackalloc8.sroa.9.0.extract.trunc, %lookup.next8 ], [ %stackalloc8.sroa.9.0, %for.loop1 ], !dbg !3144
  %stackalloc8.sroa.8.1 = phi i8 [ %stackalloc8.sroa.8.0.extract.trunc, %lookup.next8 ], [ %stackalloc8.sroa.8.0, %for.loop1 ], !dbg !3144
  %stackalloc8.sroa.7.1 = phi i8 [ %stackalloc8.sroa.7.0.extract.trunc, %lookup.next8 ], [ %stackalloc8.sroa.7.0, %for.loop1 ], !dbg !3144
  %stackalloc8.sroa.6.1 = phi i8 [ %stackalloc8.sroa.6.0.extract.trunc, %lookup.next8 ], [ %stackalloc8.sroa.6.0, %for.loop1 ], !dbg !3144
  %stackalloc8.sroa.5.1 = phi i8 [ %stackalloc8.sroa.5.0.extract.trunc, %lookup.next8 ], [ %stackalloc8.sroa.5.0, %for.loop1 ], !dbg !3144
  %stackalloc8.sroa.0.1 = phi i8 [ %stackalloc8.sroa.0.0.extract.trunc, %lookup.next8 ], [ %stackalloc8.sroa.0.0, %for.loop1 ], !dbg !3144
  %10 = phi i64 [ %19, %lookup.next8 ], [ %4, %for.loop1 ], !dbg !3126
  %11 = phi i64 [ %16, %lookup.next8 ], [ %2, %for.loop1 ], !dbg !3141
    #dbg_value(i64 %10, !3121, !DIExpression(), !3161)
    #dbg_value(i64 %x, !3120, !DIExpression(), !3162)
  %12 = icmp sgt i64 %10, %x, !dbg !3163
  %stackalloc8.sroa.11.0.insert.ext = zext i8 %stackalloc8.sroa.11.1 to i64
  %stackalloc8.sroa.11.0.insert.shift = shl nuw i64 %stackalloc8.sroa.11.0.insert.ext, 56
  %stackalloc8.sroa.10.0.insert.ext = zext i8 %stackalloc8.sroa.10.1 to i64
  %stackalloc8.sroa.10.0.insert.shift = shl nuw nsw i64 %stackalloc8.sroa.10.0.insert.ext, 48
  %stackalloc8.sroa.10.0.insert.insert = or disjoint i64 %stackalloc8.sroa.10.0.insert.shift, %stackalloc8.sroa.11.0.insert.shift
  %stackalloc8.sroa.9.0.insert.ext = zext i8 %stackalloc8.sroa.9.1 to i64
  %stackalloc8.sroa.9.0.insert.shift = shl nuw nsw i64 %stackalloc8.sroa.9.0.insert.ext, 40
  %stackalloc8.sroa.9.0.insert.insert = or disjoint i64 %stackalloc8.sroa.10.0.insert.insert, %stackalloc8.sroa.9.0.insert.shift
  %stackalloc8.sroa.8.0.insert.ext = zext i8 %stackalloc8.sroa.8.1 to i64
  %stackalloc8.sroa.8.0.insert.shift = shl nuw nsw i64 %stackalloc8.sroa.8.0.insert.ext, 32
  %stackalloc8.sroa.8.0.insert.insert = or disjoint i64 %stackalloc8.sroa.9.0.insert.insert, %stackalloc8.sroa.8.0.insert.shift
  %stackalloc8.sroa.7.0.insert.ext = zext i8 %stackalloc8.sroa.7.1 to i64
  %stackalloc8.sroa.7.0.insert.shift = shl nuw nsw i64 %stackalloc8.sroa.7.0.insert.ext, 24
  %stackalloc8.sroa.7.0.insert.insert = or disjoint i64 %stackalloc8.sroa.8.0.insert.insert, %stackalloc8.sroa.7.0.insert.shift
  %stackalloc8.sroa.6.0.insert.ext = zext i8 %stackalloc8.sroa.6.1 to i64
  %stackalloc8.sroa.6.0.insert.shift = shl nuw nsw i64 %stackalloc8.sroa.6.0.insert.ext, 16
  %stackalloc8.sroa.5.0.insert.ext = zext i8 %stackalloc8.sroa.5.1 to i64
  %stackalloc8.sroa.5.0.insert.shift = shl nuw nsw i64 %stackalloc8.sroa.5.0.insert.ext, 8
  %stackalloc8.sroa.5.0.insert.mask = or disjoint i64 %stackalloc8.sroa.7.0.insert.insert, %stackalloc8.sroa.6.0.insert.shift
  %stackalloc8.sroa.0.0.insert.ext = zext i8 %stackalloc8.sroa.0.1 to i64
  %stackalloc8.sroa.0.0.insert.mask = or disjoint i64 %stackalloc8.sroa.5.0.insert.mask, %stackalloc8.sroa.5.0.insert.shift
  %stackalloc8.sroa.0.0.insert.insert = or i64 %stackalloc8.sroa.0.0.insert.mask, %stackalloc8.sroa.0.0.insert.ext
    #dbg_value(i64 %stackalloc8.sroa.0.0.insert.insert, !3123, !DIExpression(), !3164)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3165)
  %13 = icmp slt i64 %stackalloc8.sroa.0.0.insert.insert, %n
  %or.cond30 = select i1 %12, i1 %13, i1 false, !dbg !3144
  br i1 %or.cond30, label %for.body4, label %for.loop, !dbg !3144

for.body4:                                        ; preds = %for.loop2
    #dbg_value(i64 %stackalloc.sroa.0.0.insert.insert42, !3124, !DIExpression(), !3166)
    #dbg_value(i64 %stackalloc8.sroa.0.0.insert.insert, !3123, !DIExpression(), !3167)
    #dbg_value(i64 %11, !3122, !DIExpression(), !3168)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3169)
    #dbg_value(ptr undef, !3128, !DIExpression(), !3132)
    #dbg_value(ptr undef, !3128, !DIExpression(), !3170)
    #dbg_value(i64 %stackalloc8.sroa.0.0.insert.insert, !3131, !DIExpression(), !3171)
    #dbg_value(ptr undef, !3128, !DIExpression(), !3172)
    #dbg_value(i64 %stackalloc8.sroa.0.0.insert.insert, !3131, !DIExpression(), !3173)
  %.not6 = icmp ult i64 %stackalloc8.sroa.0.0.insert.insert, %arr.len, !dbg !3174
  br i1 %.not6, label %lookup.next8, label %lookup.throw7, !dbg !3174

lookup.next8:                                     ; preds = %for.body4
  %14 = add i64 %stackalloc8.sroa.0.0.insert.insert, 1, !dbg !3175
  %stackalloc8.sroa.11.0.extract.shift = lshr i64 %14, 56, !dbg !3175
  %stackalloc8.sroa.11.0.extract.trunc = trunc nuw i64 %stackalloc8.sroa.11.0.extract.shift to i8, !dbg !3175
  %stackalloc8.sroa.10.0.extract.shift = lshr i64 %14, 48, !dbg !3175
  %stackalloc8.sroa.10.0.extract.trunc = trunc i64 %stackalloc8.sroa.10.0.extract.shift to i8, !dbg !3175
  %stackalloc8.sroa.9.0.extract.shift = lshr i64 %14, 40, !dbg !3175
  %stackalloc8.sroa.9.0.extract.trunc = trunc i64 %stackalloc8.sroa.9.0.extract.shift to i8, !dbg !3175
  %stackalloc8.sroa.8.0.extract.shift = lshr i64 %14, 32, !dbg !3175
  %stackalloc8.sroa.8.0.extract.trunc = trunc i64 %stackalloc8.sroa.8.0.extract.shift to i8, !dbg !3175
  %stackalloc8.sroa.7.0.extract.shift = lshr i64 %14, 24, !dbg !3175
  %stackalloc8.sroa.7.0.extract.trunc = trunc i64 %stackalloc8.sroa.7.0.extract.shift to i8, !dbg !3175
  %stackalloc8.sroa.6.0.extract.shift = lshr i64 %14, 16, !dbg !3175
  %stackalloc8.sroa.6.0.extract.trunc = trunc i64 %stackalloc8.sroa.6.0.extract.shift to i8, !dbg !3175
  %stackalloc8.sroa.5.0.extract.shift = lshr i64 %14, 8, !dbg !3175
  %stackalloc8.sroa.5.0.extract.trunc = trunc i64 %stackalloc8.sroa.5.0.extract.shift to i8, !dbg !3175
  %stackalloc8.sroa.0.0.extract.trunc = trunc i64 %14 to i8, !dbg !3175
  %15 = sub i64 %stackalloc.sroa.0.0.insert.insert42, %stackalloc8.sroa.0.0.insert.insert, !dbg !3176
  %16 = call i64 @llvm.smin.i64(i64 %15, i64 %11), !dbg !3144
  %17 = getelementptr inbounds i64, ptr %arr.data, i64 %stackalloc8.sroa.0.0.insert.insert, !dbg !3174
  %18 = load i64, ptr %17, align 8, !dbg !3174
  %19 = sub i64 %10, %18, !dbg !3177
    #dbg_value(i64 %19, !3121, !DIExpression(), !3177)
  br label %for.loop2, !dbg !3144

for.done:                                         ; preds = %for.loop
    #dbg_value(i64 %2, !3122, !DIExpression(), !3178)
  ret i64 %2, !dbg !3179

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !3158
  unreachable, !dbg !3158

lookup.throw7:                                    ; preds = %for.body4
  call fastcc void @runtime.lookupPanic(), !dbg !3174
  unreachable, !dbg !3174
}
