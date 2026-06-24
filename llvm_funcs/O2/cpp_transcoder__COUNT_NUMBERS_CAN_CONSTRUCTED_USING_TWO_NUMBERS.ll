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
  br i1 %4, label %17, label %5

5:                                                ; preds = %3
  %6 = sext i32 %0 to i64
  %7 = add nsw i64 %6, 64
  %8 = lshr i64 %7, 3
  %9 = and i64 %8, 2305843009213693944
  %10 = tail call noalias noundef nonnull i8* @_Znwm(i64 noundef %9) #7
  %11 = bitcast i8* %10 to i64*
  %12 = lshr i64 %7, 6
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  %14 = ptrtoint i64* %13 to i64
  %15 = ptrtoint i8* %10 to i64
  %16 = sub i64 %14, %15
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %10, i8 0, i64 %16, i1 false) #8
  br label %17

17:                                               ; preds = %5, %3
  %18 = phi i64* [ null, %3 ], [ %11, %5 ]
  %19 = phi i64* [ null, %3 ], [ %13, %5 ]
  %20 = icmp sgt i32 %1, %0
  br i1 %20, label %35, label %21

21:                                               ; preds = %17
  %22 = sdiv i32 %1, 64
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %18, i64 %23
  %25 = srem i32 %1, 64
  %26 = sext i32 %25 to i64
  %27 = icmp slt i32 %25, 0
  %28 = add nsw i64 %26, 64
  %29 = ashr i64 %26, 63
  %30 = getelementptr i64, i64* %24, i64 %29
  %31 = select i1 %27, i64 %28, i64 %26
  %32 = shl nuw i64 1, %31
  %33 = load i64, i64* %30, align 8, !tbaa !5
  %34 = or i64 %33, %32
  store i64 %34, i64* %30, align 8, !tbaa !5
  br label %35

35:                                               ; preds = %21, %17
  %36 = icmp sgt i32 %2, %0
  br i1 %36, label %51, label %37

37:                                               ; preds = %35
  %38 = sdiv i32 %2, 64
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %18, i64 %39
  %41 = srem i32 %2, 64
  %42 = sext i32 %41 to i64
  %43 = icmp slt i32 %41, 0
  %44 = add nsw i64 %42, 64
  %45 = ashr i64 %42, 63
  %46 = getelementptr i64, i64* %40, i64 %45
  %47 = select i1 %43, i64 %44, i64 %42
  %48 = shl nuw i64 1, %47
  %49 = load i64, i64* %46, align 8, !tbaa !5
  %50 = or i64 %49, %48
  store i64 %50, i64* %46, align 8, !tbaa !5
  br label %51

51:                                               ; preds = %37, %35
  %52 = icmp slt i32 %2, %1
  %53 = select i1 %52, i32 %2, i32 %1
  %54 = icmp sgt i32 %53, %0
  br i1 %54, label %55, label %68

55:                                               ; preds = %51
  %56 = icmp eq i64* %18, null
  br i1 %56, label %66, label %57

57:                                               ; preds = %121, %55
  %58 = phi i32 [ 0, %55 ], [ %122, %121 ]
  %59 = ptrtoint i64* %19 to i64
  %60 = ptrtoint i64* %18 to i64
  %61 = sub i64 %59, %60
  %62 = ashr exact i64 %61, 3
  %63 = sub nsw i64 0, %62
  %64 = getelementptr inbounds i64, i64* %19, i64 %63
  %65 = bitcast i64* %64 to i8*
  tail call void @_ZdlPv(i8* noundef %65) #8
  br label %66

66:                                               ; preds = %55, %57
  %67 = phi i32 [ 0, %55 ], [ %58, %57 ]
  ret i32 %67

68:                                               ; preds = %51, %121
  %69 = phi i32 [ %123, %121 ], [ %53, %51 ]
  %70 = phi i32 [ %122, %121 ], [ 0, %51 ]
  %71 = sdiv i32 %69, 64
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %18, i64 %72
  %74 = srem i32 %69, 64
  %75 = sext i32 %74 to i64
  %76 = icmp slt i32 %74, 0
  %77 = add nsw i64 %75, 64
  %78 = ashr i64 %75, 63
  %79 = getelementptr i64, i64* %73, i64 %78
  %80 = select i1 %76, i64 %77, i64 %75
  %81 = shl nuw i64 1, %80
  %82 = load i64, i64* %79, align 8, !tbaa !5
  %83 = and i64 %82, %81
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %121, label %85

85:                                               ; preds = %68
  %86 = add nsw i32 %69, %1
  %87 = icmp sgt i32 %86, %0
  br i1 %87, label %102, label %88

88:                                               ; preds = %85
  %89 = sdiv i32 %86, 64
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %18, i64 %90
  %92 = srem i32 %86, 64
  %93 = sext i32 %92 to i64
  %94 = icmp slt i32 %92, 0
  %95 = add nsw i64 %93, 64
  %96 = ashr i64 %93, 63
  %97 = getelementptr i64, i64* %91, i64 %96
  %98 = select i1 %94, i64 %95, i64 %93
  %99 = shl nuw i64 1, %98
  %100 = load i64, i64* %97, align 8, !tbaa !5
  %101 = or i64 %100, %99
  store i64 %101, i64* %97, align 8, !tbaa !5
  br label %102

102:                                              ; preds = %88, %85
  %103 = add nsw i32 %69, %2
  %104 = icmp sgt i32 %103, %0
  br i1 %104, label %119, label %105

105:                                              ; preds = %102
  %106 = sdiv i32 %103, 64
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %18, i64 %107
  %109 = srem i32 %103, 64
  %110 = sext i32 %109 to i64
  %111 = icmp slt i32 %109, 0
  %112 = add nsw i64 %110, 64
  %113 = ashr i64 %110, 63
  %114 = getelementptr i64, i64* %108, i64 %113
  %115 = select i1 %111, i64 %112, i64 %110
  %116 = shl nuw i64 1, %115
  %117 = load i64, i64* %114, align 8, !tbaa !5
  %118 = or i64 %117, %116
  store i64 %118, i64* %114, align 8, !tbaa !5
  br label %119

119:                                              ; preds = %105, %102
  %120 = add nsw i32 %70, 1
  br label %121

121:                                              ; preds = %68, %119
  %122 = phi i32 [ %120, %119 ], [ %70, %68 ]
  %123 = add i32 %69, 1
  %124 = icmp eq i32 %69, %0
  br i1 %124, label %57, label %68, !llvm.loop !9
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
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #8
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
