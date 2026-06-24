; ModuleID = 'benchmark/cpp_transcoder/COUNT_NUMBERS_CAN_CONSTRUCTED_USING_TWO_NUMBERS/COUNT_NUMBERS_CAN_CONSTRUCTED_USING_TWO_NUMBERS_processed.cpp'
source_filename = "benchmark/cpp_transcoder/COUNT_NUMBERS_CAN_CONSTRUCTED_USING_TWO_NUMBERS/COUNT_NUMBERS_CAN_CONSTRUCTED_USING_TWO_NUMBERS_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_COUNT_NUMBERS_CAN_CONSTRUCTED_USING_TWO_NUMBERS_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local noundef i32 @_Z6f_goldiii(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = icmp eq i32 %0, -1
  br i1 %4, label %14, label %5

5:                                                ; preds = %3
  %6 = sext i32 %0 to i64
  %7 = add nsw i64 %6, 64
  %8 = lshr i64 %7, 3
  %9 = and i64 %8, 2305843009213693944
  %10 = call noalias noundef nonnull i8* @_Znwm(i64 noundef %9) #7
  %11 = bitcast i8* %10 to i64*
  %12 = lshr i64 %7, 6
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  br label %14

14:                                               ; preds = %5, %3
  %15 = phi i64* [ null, %3 ], [ %11, %5 ]
  %16 = phi i64* [ null, %3 ], [ %13, %5 ]
  %17 = icmp eq i64* %15, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = bitcast i64* %15 to i8*
  %20 = ptrtoint i64* %16 to i64
  %21 = ptrtoint i64* %15 to i64
  %22 = sub i64 %20, %21
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %19, i8 0, i64 %22, i1 false) #8
  br label %23

23:                                               ; preds = %18, %14
  %24 = icmp sgt i32 %1, %0
  br i1 %24, label %39, label %25

25:                                               ; preds = %23
  %26 = sext i32 %1 to i64
  %27 = sdiv i64 %26, 64
  %28 = getelementptr inbounds i64, i64* %15, i64 %27
  %29 = srem i64 %26, 64
  %30 = icmp slt i64 %29, 0
  %31 = add nsw i64 %29, 64
  %32 = ashr i64 %29, 63
  %33 = getelementptr i64, i64* %28, i64 %32
  %34 = select i1 %30, i64 %31, i64 %29
  %35 = and i64 %34, 4294967295
  %36 = shl i64 1, %35
  %37 = load i64, i64* %33, align 8, !tbaa !5
  %38 = or i64 %37, %36
  store i64 %38, i64* %33, align 8, !tbaa !5
  br label %39

39:                                               ; preds = %25, %23
  %40 = icmp sgt i32 %2, %0
  br i1 %40, label %55, label %41

41:                                               ; preds = %39
  %42 = sext i32 %2 to i64
  %43 = sdiv i64 %42, 64
  %44 = getelementptr inbounds i64, i64* %15, i64 %43
  %45 = srem i64 %42, 64
  %46 = icmp slt i64 %45, 0
  %47 = add nsw i64 %45, 64
  %48 = ashr i64 %45, 63
  %49 = getelementptr i64, i64* %44, i64 %48
  %50 = select i1 %46, i64 %47, i64 %45
  %51 = and i64 %50, 4294967295
  %52 = shl i64 1, %51
  %53 = load i64, i64* %49, align 8, !tbaa !5
  %54 = or i64 %53, %52
  store i64 %54, i64* %49, align 8, !tbaa !5
  br label %55

55:                                               ; preds = %41, %39
  %56 = icmp slt i32 %2, %1
  %57 = select i1 %56, i32 %2, i32 %1
  %58 = icmp sgt i32 %57, %0
  br i1 %58, label %66, label %59

59:                                               ; preds = %55
  %60 = sext i32 %57 to i64
  %61 = sext i32 %1 to i64
  %62 = sext i32 %0 to i64
  %63 = sext i32 %2 to i64
  %64 = sext i32 %0 to i64
  %65 = add i32 %0, 1
  br label %77

66:                                               ; preds = %127, %55
  %67 = phi i32 [ 0, %55 ], [ %128, %127 ]
  br i1 %17, label %76, label %68

68:                                               ; preds = %66
  %69 = ptrtoint i64* %16 to i64
  %70 = ptrtoint i64* %15 to i64
  %71 = sub i64 %69, %70
  %72 = ashr exact i64 %71, 3
  %73 = sub nsw i64 0, %72
  %74 = getelementptr inbounds i64, i64* %16, i64 %73
  %75 = bitcast i64* %74 to i8*
  call void @_ZdlPv(i8* noundef %75) #8
  br label %76

76:                                               ; preds = %66, %68
  ret i32 %67

77:                                               ; preds = %59, %127
  %78 = phi i64 [ %60, %59 ], [ %129, %127 ]
  %79 = phi i32 [ 0, %59 ], [ %128, %127 ]
  %80 = sdiv i64 %78, 64
  %81 = getelementptr inbounds i64, i64* %15, i64 %80
  %82 = srem i64 %78, 64
  %83 = icmp slt i64 %82, 0
  %84 = add nsw i64 %82, 64
  %85 = ashr i64 %82, 63
  %86 = getelementptr i64, i64* %81, i64 %85
  %87 = select i1 %83, i64 %84, i64 %82
  %88 = and i64 %87, 4294967295
  %89 = shl i64 1, %88
  %90 = load i64, i64* %86, align 8, !tbaa !5
  %91 = and i64 %90, %89
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %127, label %93

93:                                               ; preds = %77
  %94 = add nsw i64 %78, %61
  %95 = icmp sgt i64 %94, %62
  br i1 %95, label %109, label %96

96:                                               ; preds = %93
  %97 = sdiv i64 %94, 64
  %98 = getelementptr inbounds i64, i64* %15, i64 %97
  %99 = srem i64 %94, 64
  %100 = icmp slt i64 %99, 0
  %101 = add nsw i64 %99, 64
  %102 = ashr i64 %99, 63
  %103 = getelementptr i64, i64* %98, i64 %102
  %104 = select i1 %100, i64 %101, i64 %99
  %105 = and i64 %104, 4294967295
  %106 = shl i64 1, %105
  %107 = load i64, i64* %103, align 8, !tbaa !5
  %108 = or i64 %107, %106
  store i64 %108, i64* %103, align 8, !tbaa !5
  br label %109

109:                                              ; preds = %96, %93
  %110 = add nsw i64 %78, %63
  %111 = icmp sgt i64 %110, %64
  br i1 %111, label %125, label %112

112:                                              ; preds = %109
  %113 = sdiv i64 %110, 64
  %114 = getelementptr inbounds i64, i64* %15, i64 %113
  %115 = srem i64 %110, 64
  %116 = icmp slt i64 %115, 0
  %117 = add nsw i64 %115, 64
  %118 = ashr i64 %115, 63
  %119 = getelementptr i64, i64* %114, i64 %118
  %120 = select i1 %116, i64 %117, i64 %115
  %121 = and i64 %120, 4294967295
  %122 = shl i64 1, %121
  %123 = load i64, i64* %119, align 8, !tbaa !5
  %124 = or i64 %123, %122
  store i64 %124, i64* %119, align 8, !tbaa !5
  br label %125

125:                                              ; preds = %112, %109
  %126 = add nsw i32 %79, 1
  br label %127

127:                                              ; preds = %77, %125
  %128 = phi i32 [ %126, %125 ], [ %79, %77 ]
  %129 = add nsw i64 %78, 1
  %130 = trunc i64 %129 to i32
  %131 = icmp eq i32 %65, %130
  br i1 %131, label %66, label %77, !llvm.loop !9
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #6

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_COUNT_NUMBERS_CAN_CONSTRUCTED_USING_TWO_NUMBERS_processed.cpp() #3 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #8
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { allocsize(0) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
